class ContactsController < ApplicationController
  
  def contact
  end
  
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new
    if @contact.save
      redirect_to contact_path, notice: "お問い合わせありがとうございます！"
    else
      render 'new'
    end
  end
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end

end
