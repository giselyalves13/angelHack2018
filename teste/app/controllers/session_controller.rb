class SessionController < ApplicationController
  def new
  end

	def create 
		@user = User.find_by(email: params[:session][:email])
		p 'USUARIO'
		p @user
		if @user && @user.authenticate(params[:session][:password_digest])
			sign_in
			redirect_to mentor_x_home_path
		else
			redirect_to session_new_path, notice: 'Falha na autenticação'
	    end
	end

	def destroy
		sign_out
		redirect_to root_url
	end
end
