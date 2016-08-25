#!/usr/bin/env ruby

require 'json'
require 'net/http'

class JenkinsUpdateCenter
  UPDATE_CENTER = 'https://updates.jenkins-ci.org/current/update-center.json'

  def self.validate_update_center
    resp = Net::HTTP.get_response(URI.parse(UPDATE_CENTER))
    data = resp.body.gsub(/updateCenter\.post\(\n/,'').gsub(/\n\);/,'')
    JSON.parse(data)
  end

  def self.latest_informations
    validate_update_center
  end

  def self.latest_jenkins_informations
    jenkins = ''
    validate_update_center.each do |k,v|
      if k == 'core'
        jenkins = v
      end
    end
    jenkins
  end

  def self.latest_plugin_informations(name)
    plugin = ''
    validate_update_center.each do |k,v|
      if k == 'plugins'
        plugin = v[name]
      end
    end
    plugin
  end

  def self.all_latest_plugin_versions
    plugins = {}
    validate_update_center.each do |data ,all_plugins|
      if data == 'plugins'
        all_plugins.each do | plugin |
          plugins[plugin[0]] = plugin[1]['version']
        end

      end
    end
    plugins
  end

  def self.healthcheck
    puts 'eat healthy'
  end
end
