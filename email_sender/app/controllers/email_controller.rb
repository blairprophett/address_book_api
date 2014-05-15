class EmailController < ApplicationController

  def about
  end

  def email
    email = email_params
    # binding.pry
    SiteMailer.status_email(email[:email], email[:subject], email[:body]).deliver

    render nothing: true, status: 200
  end

private
 def email_params
    params.require(:email).permit(:subject, :body)
  end

end