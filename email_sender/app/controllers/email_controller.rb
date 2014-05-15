class EmailController < ApplicationController

  def about
  end

  def email
    email = email_params
    # binding.pry
    SiteMailer.status_email(params[:email], params[:subject], params[:body]).deliver

    render nothing: true, status: 200
  end

private
 def email_params
    params.require(:email).permit(:subject, :body)
  end

end