class BidsController < ApplicationController

  # GET: /bids
  get "/bids" do
    erb :"/bids/index.html"
  end

  # GET: /bids/new
  get "/bids/new" do
    erb :"/bids/new.html"
  end

  # POST: /bids
  post "/bids" do
    redirect "/bids"
  end

  # GET: /bids/5
  get "/bids/:id" do
    erb :"/bids/show.html"
  end

  # GET: /bids/5/edit
  get "/bids/:id/edit" do
    erb :"/bids/edit.html"
  end

  # PATCH: /bids/5
  patch "/bids/:id" do
    redirect "/bids/:id"
  end

  # DELETE: /bids/5/delete
  delete "/bids/:id/delete" do
    redirect "/bids"
  end
end
