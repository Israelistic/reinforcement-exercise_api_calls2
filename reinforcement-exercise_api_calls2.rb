require 'httparty'

random_passwords_response = HTTParty.get('https://makemeapassword.org/api/v1/alphanumeric/json?c=12&l=12&sym')
parsed_response = JSON.parse(random_passwords_response.body)
passwords =[]
p "generating 12 passwords with length of 12"
parsed_response["pws"].each_with_index do |password, index|
    p "#{index}) #{password}"
    passwords.push(password)
end
puts "print array:"
p passwords
