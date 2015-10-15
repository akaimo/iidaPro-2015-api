module Api
  module V1
    class TrashController < ApplicationController
      def index
        @trash = Trash.all
        render json: @trash
      end
    end
  end
end
