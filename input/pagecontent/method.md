A partir du fichier socle de données, rechercher dans les guides d'implémentation FHIR de l'écosystème d'abord nationaux puis européens et enfin internationaux pour identifier des profils FHIR (`StructureDefinition`) sur le périmètre.

Puis un alignement est réalisé entre les items du fichier socle de données et les `StructureDefinition` afin de documenter le lien.

<!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
<div id="eds-method-overview">
    <div style="horiz-align: center">
        <img src="eds-method-overview.svg" alt="Le schéma suivant représente le workflow de la méthode employé" height="auto" width="100%" />
    </div>
</div>

Et enfin, une proposition d'alignement à l'aide du FHIR Mapping Language (FML) permettant la transformation d'instances FHIR vers les tables OMOP (TODO ajouter doc matchbox).