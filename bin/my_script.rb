require 'addressable/uri'
require 'rest-client'

# def create_user
#   url = Addressable::URI.new(
#     scheme: 'http',
#     host: 'localhost',
#     port: 3000,
#     path: '/users.json'
#   ).to_s
#
#   puts RestClient.post(
#     url,
#     { user: { name: "Gizmo", email: "gizmo@gizmo.com" } }
#   )
# end
#
# begin
#   create_user
# rescue => e
#   puts e
# end
#
url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/3',
).to_s

puts RestClient.get(url)

# def delete_user
#   url = Addressable::URI.new(
#     scheme: 'http',
#     host: 'localhost',
#     port: 3000,
#     path: '/users/1'
#   ).to_s
#
#   puts RestClient.delete(
#     url
#   )
# end
#
# delete_user


# def update_user
#   url = Addressable::URI.new(
#     scheme: 'http',
#     host: 'localhost',
#     port: 3000,
#     path: '/users/3'
#   ).to_s
#
#   puts RestClient.patch(
#     url,
#     { user: { name: "Gonzo" } }
#   )
# end
#
# update_user
