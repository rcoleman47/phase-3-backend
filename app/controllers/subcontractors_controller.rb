class SubcontractorsController < ApplicationController

  # GET: 
  get "/subcontractors" do
    Subcontractor.all.to_json
  end

  # POST:
  post "/subcontractors" do
    new_sub = Subcontractor.create(
      company_name: params[:company_name],
      trade: params[:trade],
      address: params[:address],
      email: params[:email],
      phone_number: params[:phone_number]
    )
  end

  # PATCH:
  patch "/subcontractors/:id" do
    edit_sub = Subcontractor.find(params[:id]).update(
      company_name: params[:company_name],
      trade: params[:trade],
      address: params[:address],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    edit_sub.to_json
  end

  # DELETE: 
  delete "/subcontractors/:id" do
    delete_sub = Subcontractor.find(params[:id])
    delete_sub.destroy
    delete_sub.to_json
  end
end
