class EmailsController < ApplicationController
    before_action :authenticate_user!, except: [:show,:index]
    before_action :set_email, except: [:index,:new, :create]
    
    #GET /emails
    def index
        @emails = Email.all
    end
    
    #GET /emails/:id
    def show
        
    end
    
    #GET /emails/new
    def new
        @email = Email.new
    end
    
    def edit
        
    end
    
    #POST /articles
    def create
        @email = current_user.emails.new(email_params)
        
        if @email.save
            redirect_to @email
        else
            render :new
        end
    end
    
    def destroy
        @email=Email.find(params[:id])
        @email.destroy
        redirect_to emails_path
    end
    
    #PUT /emails/:id
    def update
        
        if @email.update(email_params)
            redirect_to @email
        else
            render :edit
        end
    end
    
    private
    
    def set_email
        @email = Email.find(params[:id])
    end
    
    def email_params
        params.require(:email).permit(:title,:body)
    end
     
end
