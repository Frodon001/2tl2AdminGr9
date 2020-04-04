# Image docker server mail Postfix 



    > docker build -t wt2-9.ephec-ti.be/mail .
    > mkdir maildirs
    > docker run -p 25:25 -v `pwd`/maildirs:/var/mail wt2-9.ephec-ti.be/mail

## configurer une entrée DNS inversée pointant vers le nom d'hôte de notre serveur de messagerie.