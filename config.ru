#require 'rubygems'
#require 'bundler/setup'
#require 'sinatra'
#require 'app.rb'
#run rack-html-base

use Rack::Static, :urls => ["/css", "/js"], :root => "public"
run lambda { |env| [200, { 'Content-Type' => 'text/html', 'Cache-Control' => 'no-cache' }, File.open('public/index.html', File::RDONLY)] }


