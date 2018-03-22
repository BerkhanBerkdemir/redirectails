class UrlController < ApplicationController
  def index; end
  def show
    @url = Url.find_by url_id: params[:url_id]
  end

  def redirect_user
    @url = Url.find_by url_id: params[:url_id]
    redirect_to @url.url
  end

  def generate
    @url = Url.new(params.require(:url).permit(:url))
    @url.url_id = generate_id
    @url.status = false

    if @url.save
      redirect_to settings_path @url.url_id
    else
      puts 'error'
    end
  end

  def generate_id
    Array.new(6) { (alphabet + numbers).sample }.join
  end

  private
  def alphabet
    @alphabet ||= Array('A'..'Z') + Array('a'..'z')
  end

  private
  def numbers
    @numbers ||= Array(0..9)
  end
end
