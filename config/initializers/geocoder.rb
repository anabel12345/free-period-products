Geocoder.configure(
    lookup: :google,
    api_key: ENV['MAPS_API'],
    http_headers: { "User-Agent" => "Free Period Products" }
)


