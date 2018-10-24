require 'httparty'

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)

toronto_wards_json["objects"].each do |ward|
  puts ward["name"]
end

canadian_elections_response = HTTParty.get('https://represent.opennorth.ca/elections/')
canadian_elections_json = JSON.parse(canadian_elections_response.body)

canadian_elections_json['objects'].each do |election|
  puts election["name"]
end