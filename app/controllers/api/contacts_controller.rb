class Api::ContactsController < ApplicationController
  def one_contact_action
    @contact = Contact.first
    render 'one_contact_view.json.jb'
  end

  def all_contact_action
    @all_contacts = []

    Contact.all.each do |contact|
      @all_contacts << contact
    end

    render 'all_contact_view.json.jb'
  end
end
