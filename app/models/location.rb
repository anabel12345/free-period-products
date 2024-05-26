class Location < ApplicationRecord
    after_validation :geocode
    # def full_address
    #     "#{street}, #{city}, #{state}, #{country}"
    #   end
    def address
      [street, city, state, country].compact.join(', ')
    end

    geocoded_by :address

      # reverse_geocoded_by :latitude, :longitude do |obj, results|
      #   geo = results.first
      #   if geo
      #     obj.name    = geo.address
      #     obj.street  = geo.address.split(',').first
      #     obj.city    = geo.city
      #     obj.state   = geo.state
      #     obj.country = geo.country_code
      #   end
      # end

end
