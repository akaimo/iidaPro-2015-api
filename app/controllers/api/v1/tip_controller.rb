module Api
  module V1
    class TipController < ApplicationController
      def index
        @tip = Tip.all
        render json: @tip
      end
    end
  end
end
