/**
 * Copyright © 2023, Assistance Publique - Hôpitaux de Paris
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files 
 * (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, 
 * publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do 
 * so, subject to the following conditions:
 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 * The Software is provided “as is”, without warranty of any kind, express or implied, including but not limited to the warranties 
 * of merchantability, fitness for a particular purpose and noninfringement. In no event shall the authors or copyright 
 * Assistance Publique - Hôpitaux de Paris be liable for any claim, damages or other liability, whether in an action of contract, 
 * tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the Software.
 * Except as contained in this notice, the name of the Assistance Publique - Hôpitaux de Paris shall not be used in advertising or 
 * otherwise to promote the sale, use or other dealings in this Software without prior written authorization from the 
 * Assistance Publique - Hôpitaux de Paris.
 */
import com.github.gradle.node.npm.task.NpmTask
import com.github.gradle.node.npm.task.NpxTask
import java.nio.file.Files

plugins {
    id("java")
    id("com.github.node-gradle.node") version "7.0.2"
    id("de.undercouch.download") version "5.6.0"
}

group = "fr.health-data-hub"
version = File(projectDir.absolutePath,"sushi-config.yaml")
    .readLines()
    .find {
        it.contains("version")
    }?.substringAfter("version: ")?: "unknown"

node {
    download.set(true)
    version.set("${properties["nodeVersion"]}")
}

defaultTasks(
    "cleanIG",
    "buildIG"
)

val sushiInstall = tasks.register<NpmTask>("sushiInstall") {
    args.set(
        listOf(
            "install",
            "fsh-sushi@${properties["sushiVersion"]}"
        )
    )
    dependsOn(
        tasks.nodeSetup,
        tasks.npmSetup,
        tasks.npmInstall
    )
}

val sushiBuild = tasks.register<NpxTask>("sushiBuild") {
    command.set("sushi")
    args.set(
        listOf(
            "build",
            "."
        )
    )
    dependsOn(
        sushiInstall
    )
}

val igPublisherPath = "input-cache/publisher.jar"
val igPublisherInstall = tasks.register<Task>("igPublisherInstall") {
    group = "build setup"
    doLast {
        val inputCacheDir = file("input-cache").toPath()
        val publisherJar = file(igPublisherPath).toPath()

        if (!Files.exists(inputCacheDir)) {
            Files.createDirectory(inputCacheDir)
        }

        if (!Files.exists(publisherJar)) {
            download.run {
                src(
                    "https://github.com/HL7/fhir-ig-publisher/releases/download/${properties["publisherVersion"]}/publisher.jar"
                )
                dest(
                    igPublisherPath
                )
                overwrite(
                    false
                )
            }
        }
    }
}

val igPublisherBuild = tasks.register<JavaExec>("igPublisherBuild") {
    group = "build"

    jvmArgs("-Dfile.encoding=UTF-8")
    classpath(igPublisherPath)
    args = listOf(
        "-no-sushi",
        "-tx ${properties["tx"]}",
        "-ig",
        "."
    )
    dependsOn(
        igPublisherInstall
    )
}

val buildIG = tasks.register<GradleBuild>("buildIG") {
    group = "build"

    tasks = listOf(
        "sushiBuild",
        "igPublisherBuild"
    )
}

val reBuildIG = tasks.register<GradleBuild>("reBuildIG") {
    group = "build"

    tasks = listOf(
        "cleanIG",
        "sushiBuild",
        "igPublisherBuild"
    )
}

val cleanIG = tasks.register<Delete>("cleanIG") {
    group = "build"

    delete(
        "fsh-generated",
        "output",
        "temp",
        "template",
        "input-cache/schemas",
        "input-cache/txcache",
        "input-cache/publisher.jar",
        ".gradle/nodejs",
        "node_modules",
        "package.json",
        "package-lock.json"
    )
}
