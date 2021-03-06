module Slack
  module Web
    module Api
      class Error < ::Faraday::Error
        attr_reader :response

        def initialize(message, response)
          @response = response
          super message
        end
      end
    end
  end
end
