# Image docker server mail Postfix 



    > docker build -t wt2-9.ephec-ti.be/mail .
    > docker run -d -it -p 25:25 wt2-9.ephec-ti.be/mail

## configurer une entrée DNS inversée pointant vers le nom d'hôte de notre serveur de messagerie.