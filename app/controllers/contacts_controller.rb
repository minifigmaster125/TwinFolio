class ContactsController < ApplicationController
  include ApplicationHelper
  before_action :set_contact, only: [:show, :edit, :update, :destroy]


  # GET /contacts/new
  def new
    @contact = Contact.new
  end


  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
      if @contact.save
	ContactMailer.contact_email(@contact).deliver
       redirect_to new_contact_path,:flash => { success: "An email has been sent to me. Thanks for dropping by!" }
      else
        flash.now[:failure] = "Could not create email. Please fill in all the fields"
        render action: 'new' 
      end
  end


  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :body)
    end
 
end
