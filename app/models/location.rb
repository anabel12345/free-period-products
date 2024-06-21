class Location < ApplicationRecord
    after_validation :geocode
    before_save :ensure_latitude_and_longitude_prescense
   
    def address
      [street, city, state, country].compact.join(', ')
    end

    geocoded_by :address


    def log_message
      puts "You are about to save an article"
    end
    

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
      def ensure_latitude_and_longitude_prescense
        if latitude.nil? || longitude.nil?
          errors.add(:base, "We don't think this is a real location. If this is a mistake, please contact the developers!")
           throw(:abort)
        end
  
      end

end
