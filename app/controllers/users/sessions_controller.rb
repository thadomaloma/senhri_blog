class Users::SessionsController < Devise::SessionsController
  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to posts_path, notice: 'You have logged in as a guest user.'
  end

  def guest_admin_sign_in
    user = User.admin_guest
    sign_in user
    redirect_to posts_path, notice: 'You have logged in as a guest admin user.'
  end
end
