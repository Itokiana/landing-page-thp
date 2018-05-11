class VisiteursController < ApplicationController
    def new
    end

    def create
        visiteur = Visiteur.find_by(email: params["email"].downcase)
        if visiteur
            redirect_to index_path, success: "Vous avez déjà visité le site!"
        else
            visiteur = Visiteur.create(email: params["email"], message: params['message'])
            if visiteur.valid?
                VisiteurMailer.welcome_email(visiteur).deliver_now
                redirect_to index_path, success: "Merci d'avoir visider nos site"
            else
                flash.now[:danger] = "Erreur de mail"
                render visiteurs_new_path
            end
        end
    end
end
