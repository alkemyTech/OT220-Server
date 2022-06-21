# frozen_string_literal: true

class MembersController < ApplicationController
  before_action :authorize_request

  def update
    if @member.update(member_params)
      render json: @member, status: :ok
    else
      render json: { message: 'Unable to update member' }, status: :not_found
    end
  end

  private

  def set_member
    @member = Member.find(params[:id])
  end

  def member_params
    params.require(:member).permit(:name, :facebook_url, :instagram_url,
                                   :linkedin_url, :description)
  end
end
