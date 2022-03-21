class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user = User.find_by(username: 'Reona')
    # Using id: 3 could cause errors when db:drops
  end

  # Documentation on find_by and where
  # https://qiita.com/nakayuu07/items/3d5e2f8784b6f18186f2
end
