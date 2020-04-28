
### serveur VOIP
- Mise en place de l'environement

`mkdir VOIP`

`cd VOIP`

- Récupérer les fichiers

`curl -o download.sh https://raw.githubusercontent.com/Frodon001/2tl2AdminGr9/master/VOIP/download.sh`

`chmod 777 download.sh`

`./download.sh`

- Lancement du docker

`docker-compose up -d`

- Asterisk interne


    entrer dans le docker et dans asterisk 
    ---------------
    docker exec -it voip bash -l
    asterisk -rvvv
    
    affichage dialplan
    ---------------
    dialplan show
    dialplan show <context>
    
    test appel
    ---------------
    console dial 100@Direction 
    
    show iax
    ---------------
    iax2 show users
    
    show sip users
    ---------------
    sip show users