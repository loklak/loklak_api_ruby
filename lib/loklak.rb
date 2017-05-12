require 'net/http'
require 'json'
require 'loklak/version'
require 'open-uri'

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

  def self.search(query = nil, since_date = nil, until_date = nil,
                  from_user = nil, count = nil)
    method_path = 'search.json'
    if !query.nil?
      method_path += '?query=' + query
      method_path += ' since:' + since_date unless since_date.nil?
      method_path += ' until:' + until_date unless until_date.nil?
      method_path += ' from:' + from_user unless from_user.nil?
      method_path += '&count=' + count.to_s unless count.nil?
      puts method_path
      response = Net::HTTP.get_response(URI(URI.encode(BASE_API_URL +
                                        method_path)))
      if response.code == '200'
        JSON.parse(response.body)
      else
        {}
      end
    else
      {}
    end
  end
end
