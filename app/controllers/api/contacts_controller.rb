class Api::ContactsController < ApplicationController
  def one_contact_action
    @contact = Contact.first
    render 'one_contact_view.json.jb'
  end

  def all_contact_action
    # @contacts = []

    # Contact.all.each do |contact|
    #   @contacts << contact
    # end
    @contacts = Contact.all
    render 'all_contact_view.json.jb'
  end
end
