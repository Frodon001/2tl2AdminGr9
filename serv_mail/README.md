# Image docker server mail Postfix 

## Installationde postfix en non intéractif, supervisor sasl2-bin opendkim opendkim-tools mailutils vim language-pack-fr 



    > sudo docker build -t wt2-9.ephec-ti.be/mail .
    > mkdir maildirs
    > sudo docker run -d -it -p 25:25 -v `pwd`/maildirs:/var/mail wt2-9.ephec-ti.be/mail


### configurer une entrée DNS inversée pointant vers le nom d'hôte de notre serveur de messagerie.