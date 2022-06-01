class ContractsController < ApplicationController

  # GET: /contracts
  get "/contracts" do
    erb :"/contracts/index.html"
  end

  # GET: /contracts/new
  get "/contracts/new" do
    erb :"/contracts/new.html"
  end

  # POST: /contracts
  post "/contracts" do
    redirect "/contracts"
  end

  # GET: /contracts/5
  get "/contracts/:id" do
    erb :"/contracts/show.html"
  end

  # GET: /contracts/5/edit
  get "/contracts/:id/edit" do
    erb :"/contracts/edit.html"
  end

  # PATCH: /contracts/5
  patch "/contracts/:id" do
    redirect "/contracts/:id"
  end

  # DELETE: /contracts/5/delete
  delete "/contracts/:id/delete" do
    redirect "/contracts"
  end
end
