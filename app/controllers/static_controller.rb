class StaticController < ApplicationController

  def index
    gon.aws_access_key = ENV["AWS_ACCESS_KEY_ID_WDI"]
    gon.aws_secret_key = ENV["AWS_SECRET_ACCESS_KEY_WDI"]
  end

end