Jenkins Update Center
==================


Copyright &copy; 2015-2016, Markus These

Client libraries for communicating with a Jenkins CI Update Center.


OVERVIEW:
---------
This project is a simple API client for interacting with the Update-Center of the Jenkins Continuous
Integration server.


DETAILS:
--------
This projects currently only provides functionality for the
<tt>Jenkins and Plugins</tt>.

USAGE:
------

### Installation

Install jenkins-update-center by <tt>sudo gem install jenkins-update-center</tt>
Include this gem in your code as a require statement.

    require 'jenkins-update-center'

### Usage

The following example passes the <tt>update-center.json</tt> file contents from jenkins-ci.org.
And returns all informations from the latest available jenkins-version.

```ruby
#return: Jenkinsinformation as JSON
@jenkins_informations = JenkinsUpdateCenter.latest_jenkins_informations

puts @jenkins_informations
```

You can also get the information of a specific Plugin

```ruby
#return: Plugininformation as JSON
@plugin_information = JenkinsUpdateCenter.latest_plugin_informations('ansicolor')

puts @plugin_information
```
