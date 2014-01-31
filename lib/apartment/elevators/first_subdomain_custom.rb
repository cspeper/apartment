require 'apartment/elevators/first_subdomain'

module Apartment
  module Elevators
    # Provides a rack based tenant switching solution based on the first subdomain
    # of a given domain name.
    # eg:
    #     - example1.domain.com               => example1
    #     - example2.something.domain.com     => example2
    class FirstSubdomainCustom < FirstSubdomain

      def parse_tenant_name(request)
        subdomain = super
        subdomain == 'www' ? 'open' : subdomain
      end
    end
  end
end