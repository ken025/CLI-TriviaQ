#!/usr/bin/env ruby 

require 'rest-client'
require 'json'
require 'pry'

require_relative '../lib/trivia'
require_relative '../lib/api'
require_relative '../lib/cli'
CLI.new.start 
