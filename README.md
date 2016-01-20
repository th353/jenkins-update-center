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

The following example passes the <tt>update-center.json</tt> file contents from <tt>jenkins-ci.org</tt>.
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

### Return
Example:

```json
{"buildDate"=>"Oct 29, 2015", "dependencies"=>[], "developers"=>[{"developerId"=>"dblock", "email"=>"dblock@dblock.org", "name"=>"Daniel Doubrovkine"}], "excerpt"=>"This plugin adds support for ANSI escape sequences, including color, to Console Output.", "gav"=>"org.jenkins-ci.plugins:ansicolor:0.4.2", "labels"=>["misc"], "name"=>"ansicolor", "previousTimestamp"=>"2014-12-11T16:10:12.00Z", "previousVersion"=>"0.4.1", "releaseTimestamp"=>"2015-10-29T11:46:12.00Z", "requiredCore"=>"1.609.1", "scm"=>"github.com", "sha1"=>"dvrijC29PnvdoK12Xr/d7pWF/nc=", "title"=>"AnsiColor", "url"=>"http://updates.jenkins-ci.org/download/plugins/ansicolor/0.4.2/ansicolor.hpi", "version"=>"0.4.2", "wiki"=>"https://wiki.jenkins-ci.org/display/JENKINS/AnsiColor+Plugin"}
```
