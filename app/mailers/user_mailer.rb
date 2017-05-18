class UserMailer < ApplicationMailer
  default from: 'goldensoftdev@gmail.com'

  def share_timeline_email(user, share, timeline)
    @user = user
    @share = share
    @timeline = timeline

    @signup_url = ENV["HOST"] + '/users/sign_up'
    @timeline_url = ENV["HOST"] + '/timelines/' + @timeline.id

    recipient = User.find_by(email: @share.email)
    @registered = false
    if recipient
      @registered = true
    end

    subject = 'Timeline was shared with you'
    mail(to: @share.email, subject: subject)
  end

end
