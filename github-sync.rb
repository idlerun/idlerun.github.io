#!/usr/bin/env ruby

require 'net/http'
require 'uri'
require 'yaml'
require 'json'

outdir = "_includes/github"
Dir.mkdir(outdir) unless File.exists?(outdir)

config = YAML.load_file('_config.yml')
username = config['github_username']
repos = JSON.parse(Net::HTTP.get(URI.parse(URI.encode("https://api.github.com/users/#{username}/repos"))))
repos.each { |r|
  reponame = r['name']
  readme = Net::HTTP.get(URI.parse(URI.encode("https://raw.githubusercontent.com/#{username}/#{reponame}/master/README.md")))
  if readme != "Not Found"
    outfile = "#{outdir}/#{reponame}.md"
    File.open(outfile, 'w') {|f| f.write(readme) }
    puts "Wrote #{outfile}"
  end
}