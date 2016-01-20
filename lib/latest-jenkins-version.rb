#!/usr/bin/env ruby

require 'json'
require 'net/http'

class LatestFenkinsVersion
  UPDATE_CENTER = 'https://updates.jenkins-ci.org/current/update-center.json'

  def self.validate_update_center
    resp = Net::HTTP.get_response(URI.parse(UPDATE_CENTER))
    data = resp.body.gsub(/updateCenter\.post\(\n/,'').gsub(/\n\);/,'')
    JSON.parse(data)
  end

  def self.current_plugin_version
    current_plugins = validate_update_center
  end

  def self.healthcheck
    puts 'eat healthy'
  end
end
