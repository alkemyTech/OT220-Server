# frozen_string_literal: true

class OrganizationsController < ApplicationController
  before_action :authorize_request
  before_action :set_organization, only: %i[public]

  def public
    render
  end

  private

  def set_organization
    @organization = Organization.find(params[:id])
  end
end
