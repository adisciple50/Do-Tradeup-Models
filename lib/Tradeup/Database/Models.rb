# frozen_string_literal: true

require "Models/version"
require 'mongoid'

module Tradeup
  module Database
    module Models
      class Error < StandardError; end

      class Pair
        include  Mongoid::Document

        field :symbol_one, type: String
        field :symbol_two, type: String
        field :amount, type: Float, default: 0.0

      end

    end
  end
end
