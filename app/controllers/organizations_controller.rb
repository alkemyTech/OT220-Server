# frozen_string_literal: true

class OrganizationsController < ApplicationController
  before_action :set_organization, only: %i[public]
  before_action :admin?, only: %i[update]

  def public
    render
  end
  
  def update
    if @organization.update(organization_params)
      render json: @organization, status: :ok
    else
      render json: { message: 'Unable to update organization' }, status: :not_found
    end
  end

  private

  def set_organization
    @organization = Organization.find(params[:id])
  end

  def organization_params
    params.require(:organization).permit(:name, :phone, :address, :image)
  end
end
