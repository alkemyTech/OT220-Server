# frozen_string_literal: true

module Authorized
    def admin
      render json: { errors: 'Unauthorized access' }, status: :forbidden unless admin?
    end
  
    def admin?
      @current_user.role.name == 'admin'
    end
  
    def owner?
      params[:id].to_i == @current_user.id
    end
  
    def ownership?
      render json: { errors: 'Unauthorized access' }, status: :forbidden unless admin? || owner?
    end
  end
