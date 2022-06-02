class EstimatesController < ApplicationController

  # GET: /estimates
  get "/estimates" do
    Estimate.all.to_json
  end

  post "/estimates" do
    Estimate.create(
      project_id: params[:project_id],
      total: params[:total]
    )
  end

  # patch "/estimates/:id" do
  #   estimate = Estimate.find_by(params[:id]).update(
  #     total: params[:total]
  #   )
  #   estimate.to_json
  # end

end
