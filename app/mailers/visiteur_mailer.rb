class VisiteurMailer < ApplicationMailer
    default from: "test.sayna@gmail.com"

    def welcome_email(visiteur)
        @visiteur = visiteur
        mail(to: @visiteur.email, 
        subject: 'Bienvenue dans le site The Hacking Project Madagascar',
        template_path: 'visiteur_mailer')
    end
end
