class HomeController < ApplicationController

  def index
    @menus = Menu.all
    @answer = Contact.answer_to_returns
    @contact = Contact.new
  end
  
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      redirect_to root_path, notice: '送信されました'
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:name, :email, :subject, :phone_numb, :message, :answer_to_return)
    end

end
