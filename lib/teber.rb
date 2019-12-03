require "teber/version"
require "teber/driver"
require "teber/wait"
require "teber/locator"
require 'fileutils'
require 'selenium-webdriver'
require 'yaml'
require 'yaml_extend'
require 'rspec/core'
require 'parallel_tests'
require 'optparse'
require 'pry'
require 'readline'
require 'os'
require 'fileutils'
require 'webdriver_manager'

module Teber
  class CLI
    def invoke(argv)
      example if argv.include?('example')
    end

    def example
      begin
        puts "\nWelcome to TEBER !!! \n\n"
        source_directory      = File.dirname(__FILE__) + "/../sample/."
        destination_directory = Dir.pwd + "/Teber-Ruby/"
        FileUtils.cp_r "#{source_directory}", "#{destination_directory}"
        puts "\n\nInitialized sample testbdd project in #{destination_directory}\n\n"
        puts "Follow the following steps to make sure everyting is setup in a right way:"
        puts "1. Now Make sure to rename the project name from 'Teber-Ruby' to your 'Custom Name'"
        puts "2. Navigate to your project and Do 'bundle install' before proceeding with the following step"
        puts "3. For more info on how to work on this project verify https://nareshnavinash.github.io/Teber-Ruby/"
        exit!
      rescue Exception => e
        puts e.message
        puts e.backtrace
      ensure
        exit!
      end
    end

  end
end
