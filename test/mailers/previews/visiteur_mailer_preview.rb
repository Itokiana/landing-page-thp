# Preview all emails at http://localhost:3000/rails/mailers/visiteur_mailer
class VisiteurMailerPreview < ActionMailer::Preview
    def welcome_email
        VisiteurMailer.welcome_email(Visiteur.first)
    end
end
