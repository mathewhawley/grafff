class StaticController < ApplicationController

  # Makes AWS keys accessible in JavaScript
  def index
    gon.aws_access_key = ENV["AWS_ACCESS_KEY_ID_APP_PUBLIC"]
    gon.aws_secret_key = ENV["AWS_SECRET_ACCESS_KEY_ID_APP_PUBLIC"]
  end

end