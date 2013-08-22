class SContactsController < ApplicationController
  before_action :set_s_contact, only: [:show, :edit, :update, :destroy]


  # GET /s_contacts/new
  def new
    @s_contact = SContact.new
  end

  # GET /s_contacts/1/edit
  def edit
  end

  # POST /s_contacts
  # POST /s_contacts.json
  def create
    @s_contact = SContact.new(s_contact_params)

      if @s_contact.save
       redirect_to new_suchaaver_s_contact_path,:flash => { success: "An email has been sent to me. Thanks for dropping by!" }
       ContactMailer.s_contact_email(@s_contact).deliver
      else
        flash.now[:failure] = "Could not create email. Please fill in all the fields"
        render action: 'new' 
      end
  end


  # DELETE /s_contacts/1
  # DELETE /s_contacts/1.json
  def destroy
    @s_contact.destroy
    respond_to do |format|
      format.html { redirect_to s_contacts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_s_contact
      @s_contact = SContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def s_contact_params
      params.require(:s_contact).permit(:name, :email, :body)
    end
end
