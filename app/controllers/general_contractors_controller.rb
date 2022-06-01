class GeneralContractorsController < ApplicationController

  # GET: /general_contractors
  get "/general_contractors" do
    erb :"/general_contractors/index.html"
  end

  # GET: /general_contractors/new
  get "/general_contractors/new" do
    erb :"/general_contractors/new.html"
  end

  # POST: /general_contractors
  post "/general_contractors" do
    redirect "/general_contractors"
  end

  # GET: /general_contractors/5
  get "/general_contractors/:id" do
    erb :"/general_contractors/show.html"
  end

  # GET: /general_contractors/5/edit
  get "/general_contractors/:id/edit" do
    erb :"/general_contractors/edit.html"
  end

  # PATCH: /general_contractors/5
  patch "/general_contractors/:id" do
    redirect "/general_contractors/:id"
  end

  # DELETE: /general_contractors/5/delete
  delete "/general_contractors/:id/delete" do
    redirect "/general_contractors"
  end
end
