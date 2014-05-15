class EmailController < ApplicationController

  def about
  end

  def email

    
    render nothing: true, status: 200
    # @email = Email.new(email_params)

    # response_to do |format|
    #   if @email.save
    #     format.html{ redirect_to @email, notice: 'Email was successfully created.' }
    #     format.json { render json: @email, status: :created}
    #   else
    #     format.html { render action: 'email' }
    #     format.json { render json: @email.errors, status: :unprocessable_entity }
    #   end
    # end
  end

private
 def movie_params
    params.require(:email).permit(:subject, :body)
  end

end