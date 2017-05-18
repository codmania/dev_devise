class UserMailer < ApplicationMailer
  default from: 'goldensoftdev@gmail.com'

  def share_timeline_email(user, share, timeline)
    @user = user
    @share = share
    @timeline = timeline

    # TODO: this should be refactored
    host = 'https://dev-timeline.herokuapp.com'
    @signup_url = host + '/users/sign_up'
    @timeline_url = host + '/timelines/' + @timeline.id.to_s

    recipient = User.find_by(email: @share.email)
    @registered = false
    if recipient
      @registered = true
    end

    subject = 'Timeline was shared with you'
    mail(to: @share.email, subject: subject)
  end

end
