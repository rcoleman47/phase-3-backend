class LineItemsController < ApplicationController

  # GET: /line_items
  get "/line_items" do
    erb :"/line_items/index.html"
  end

  # GET: /line_items/new
  get "/line_items/new" do
    erb :"/line_items/new.html"
  end

  # POST: /line_items
  post "/line_items" do
    redirect "/line_items"
  end

  # GET: /line_items/5
  get "/line_items/:id" do
    erb :"/line_items/show.html"
  end

  # GET: /line_items/5/edit
  get "/line_items/:id/edit" do
    erb :"/line_items/edit.html"
  end

  # PATCH: /line_items/5
  patch "/line_items/:id" do
    redirect "/line_items/:id"
  end

  # DELETE: /line_items/5/delete
  delete "/line_items/:id/delete" do
    redirect "/line_items"
  end
end
