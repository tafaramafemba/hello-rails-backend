module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        greeting = Greeting.order(Arel.sql('RANDOM()')).first
        render json: { greeting: greeting.greeting }
      end
    end
  end
end
