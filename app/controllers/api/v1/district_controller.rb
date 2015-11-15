module Api
  module V1
    class DistrictController < ApplicationController
      def index
        @district = District.all
        render json: @district
      end
    end
  end
end
