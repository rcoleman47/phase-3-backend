class EstimatesController < ApplicationController

  # GET: /estimates
  get "/estimates" do
    erb :"/estimates/index.html"
  end

  # GET: /estimates/new
  get "/estimates/new" do
    erb :"/estimates/new.html"
  end

  # POST: /estimates
  post "/estimates" do
    redirect "/estimates"
  end

  # GET: /estimates/5
  get "/estimates/:id" do
    erb :"/estimates/show.html"
  end

  # GET: /estimates/5/edit
  get "/estimates/:id/edit" do
    erb :"/estimates/edit.html"
  end

  # PATCH: /estimates/5
  patch "/estimates/:id" do
    redirect "/estimates/:id"
  end

  # DELETE: /estimates/5/delete
  delete "/estimates/:id/delete" do
    redirect "/estimates"
  end
end
