class UserMailer < ApplicationMailer
  default from: 'notifications@timeline.com'

  def share_timeline_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
