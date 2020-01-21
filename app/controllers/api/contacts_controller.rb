class Api::ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
    render 'index.json.jb'
  end

  def create
    @contact = Contact.new(
                            first_name: params[:first_name],
                            middle_name: params[:middle_name],
                            last_name: params[:last_name],
                            bio: params[:bio],
                            email: params[:email],
                            phone_number: params[:phone_number],

                            )
    @contact.save
    render 'show.json.jb'
  end

  def show
    @contact = Contact.find(params[:id])
    render 'show.json.jb'
  end

  def update
    @contact = Contact.find(params[:id])

    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.bio = params[:bio] || @contact.bio
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number

    @contact.save
    render 'show.json.jb'
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    render json: {Elrond: "Isildur! Destroy it!",
                  Isildur: "Casts #{contact.first_name} into Mt. Doom"
                  }
  end

end
