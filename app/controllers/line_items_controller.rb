class LineItemsController < ApplicationController

  get "/line_items" do
    LineItem.all.find_by(estimate_id: params[:estimate_id]).to_json
  end

  post "/line_items" do
    new_item = LineItem.create(
      number: params[:number],
      unit: params[:unit],
      cost_per_unit: params[:cost_per_unit],
      total_cost: params[:total_cost],
      subbed_out: params[:subbed_out],
      estimate_id: params[:estimate_id]
    )
  end

  patch "/line_items" do
    edit = LineItem.find(params[:id]).update(
      number: params[:number],
      unit: params[:unit],
      cost_per_unit: params[:cost_per_unit],
      total_cost: params[:total_cost],
      subbed_out: params[:subbed_out]
    )
    edit.to_json
  end

  delete "/line_items" do
    delete = LineItem.find(params[:id])
    delete.destroy
    delete.to_json
  end


end
