class SubcontractorsController < ApplicationController

  # GET: /subcontractors
  get "/subcontractors" do
    erb :"/subcontractors/index.html"
  end

  # GET: /subcontractors/new
  get "/subcontractors/new" do
    erb :"/subcontractors/new.html"
  end

  # POST: /subcontractors
  post "/subcontractors" do
    redirect "/subcontractors"
  end

  # GET: /subcontractors/5
  get "/subcontractors/:id" do
    erb :"/subcontractors/show.html"
  end

  # GET: /subcontractors/5/edit
  get "/subcontractors/:id/edit" do
    erb :"/subcontractors/edit.html"
  end

  # PATCH: /subcontractors/5
  patch "/subcontractors/:id" do
    redirect "/subcontractors/:id"
  end

  # DELETE: /subcontractors/5/delete
  delete "/subcontractors/:id/delete" do
    redirect "/subcontractors"
  end
end
