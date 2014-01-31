require 'apartment/elevators/first_subdomain'

module Apartment
  module Elevators

    class FirstSubdomainCustom < FirstSubdomain

      def initialize(app, processor)
        @app = app
        @subdomain_mapper = processor
        @processor = method(:parse_tenant_name)
      end

      def parse_tenant_name(subdomain)
        @subdomain_mapper.call(subdomain)
      end
    end
  end
end