# Cardmanagger
1-  Allez dans la racine de l'application dans le dossier gestioncarte là où se trouve le dossier src.

2-  Compiler à l'aide de maven, en une fois pour les 3 projets + le frendend vue.js. Se mettre dans le dossier cardmanager:
    
           mvn clean install -DskipTests

3- Exécution, se mettre dans le dossier retriever et faire:

     java -jar target/retriever-9.4.0.jar

puis dans un autre terminal faire:

        java -jar target/painter-1.3.0.jar

4- Exécuter le fontend dans le navigateur:

        http://localhost:8080

Dans le frontend aller dans le menu Pokemon puis dans images. Choisir une série et une extension puis cliquer sur
le bouton Extraire. Le backend reçoit la commande et commence à scraper l'extension demandée dans limitlesstcg.com
il récupère les images des cartes de l'extension choisie sur le site distant et identifie uniquement celles qui sont déjà présentes
dans la base des données et il renvoit la réponse au frontend pour qu'il les affiche. On a la possiblité de choisir
pour chaque carte une image unique par simple clique sur l'image choisie. Ensuite un bouton enregitrer
apparait qui permet de sauvegarde, grâce à painter toutes les images selectionnées à la fois dans la base
history et sur le disque. Pour le choix du dossier, il faut renseigner dans painter/painter/ressources/application.properties:

     #Chemin d'enregistrement des images
     painter.image.storage-path=/home/ia/images


