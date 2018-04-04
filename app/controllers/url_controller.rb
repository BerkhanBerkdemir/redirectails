class UrlController < ApplicationController
  def index; end

  def show
    @url = Url.find_by url_id: params[:url_id]

    unless @url
      flash[:danger] = "We didn't find this link. Make sure you have a valid short link."
      render 'landings/index'
    end
  end

  def redirect_user
    @url = Url.find_by url_id: params[:url_id]

    if @url
      redirect_to @url.url
    else
      flash[:danger] = "We didn't find this link. Make sure you have a valid short link."
      render 'landings/index'
    end
  end

  def generate
    @url = Url.new(params.require(:url).permit(:url, :status))
    @url.url_id = generate_id

    if @url.save
      redirect_to settings_path @url.url_id
    else
      flash[:danger] = "Something went wrong. Could you check the link for us?"
      render 'landings/index'
    end
  end

  private

  def generate_id
    alphabet = Array('A'..'Z') + Array('a'..'z')
    numbers = Array(0..9)
    Array.new(6) { (alphabet + numbers).sample }.join
  end
end
