require 'plaid'

module PlaidServices
    attr_reader :client
    class Connection
        def initialize()
            @configuration = Plaid::Configuration.new
            @configuration.server_index = Plaid::Configuration::Environment["sandbox"]
            @configuration.api_key["PLAID-CLIENT-ID"] = ENV["PLAID-CLIENT-ID"]
            @configuration.api_key["PLAID-SECRET"] = ENV["PLAID-SECRET"]

            api_client = Plaid::ApiClient.new(
            configuration
            )

            @client = Plaid::PlaidApi.new(api_client)
        end
    end
end