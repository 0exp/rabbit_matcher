# frozen_string_literal: true

require 'simplecov'

SimpleCov.formatter = SimpleCov::Formatter::HTMLFormatter
SimpleCov.minimum_coverage(100)
SimpleCov.start do
  enable_coverage :branch
  add_filter 'spec'
end

require 'bundler/setup'
require 'rabbit_matcher'
require 'pry'

RSpec.configure do |config|
  config.order = :random
  Kernel.srand config.seed
  config.expect_with(:rspec) { |c| c.syntax = :expect }
end
