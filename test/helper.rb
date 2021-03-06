require 'simplecov'

module SimpleCov::Configuration
  def clean_filters
    @filters = []
  end
end

SimpleCov.configure do
  clean_filters
end

if ENV['COVERAGE']
  SimpleCov.start do
    add_filter '/test/'
    # exclude RUBY/lib from coverage
    add_filter RbConfig::TOPDIR + '/lib'
  end
end

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts 'Run `bundle install` to install missing gems'
  exit e.status_code
end

require 'minitest/autorun'
