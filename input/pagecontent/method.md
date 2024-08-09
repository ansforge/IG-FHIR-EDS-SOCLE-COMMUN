À partir du fichier socle de données, nous explorons les guides d'implémentation FHIR (FIG) au niveau national, puis européen, et enfin international, pour identifier des profils FHIR (`StructureDefinition`) correspondant à chaque variable socle.

Si un FIG est trouvé, cela signifie qu'un profil répondant précisément au besoin exprimé par cette variable existe et nous l'alignons avec la variable.

Si aucun FIG n'est trouvé, nous devons alors spécifier nous-mêmes le profil afin qu'il réponde aux besoins exprimés par cette variable.

<!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
<div id="eds-method-overview">
    <div style="horiz-align: center">
        <img src="eds-method-overview.svg" alt="Le schéma suivant représente le workflow de la méthode employé" height="auto" width="100%" />
    </div>
</div>

Pour chaque profil présent dans ce guide, nous devons produire un exemple d'utilisation (d'instanciation). L'utilisation du contrôle qualité à chaque étape de la création du guide permet d'évaluer la conformité du contenu.

Enfin, une proposition d'alignement à l'aide du FHIR Mapping Language (FML) permet la transformation des instances FHIR vers les tables OMOP (TODO : ajouter documentation de Matchbox).