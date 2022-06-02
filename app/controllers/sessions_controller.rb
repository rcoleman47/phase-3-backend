class SessionsController < ApplicationController

  post '/sessions' do 
    gc = GeneralContractor.find_by(email: params[:email])
    if gc && gc.authenticate(params[:password])
      session[:id] = gc.id
    else 
      @error = "Invalid email or password"
    end
  end

  delete '/logout' do
    session.clear
  end

end