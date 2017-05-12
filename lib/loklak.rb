require 'net/http'
require 'json'
require 'loklak/version'

BASE_API_URL = 'http://loklak.org/api/'.freeze

# Module to access loklak apis
module Loklak
  def self.hello
    method_path = 'hello.json'
    response = Net::HTTP.get_response(URI(BASE_API_URL + method_path))
    if response.code == '200'
      JSON.parse(response.body)
    else
      {}
    end
  end

  def self.status
    method_path = 'status.json'
    response = Net::HTTP.get_response(URI(BASE_API_URL + method_path))
    if response.code == '200'
      JSON.parse(response.body)
    else
      {}
    end
  end
end
