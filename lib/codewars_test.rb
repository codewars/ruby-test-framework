require 'codewars_test/display'
require 'codewars_test/test'

# TODO Move these to some module so users can decide to use global version or not.
Display = CodewarsTest::Display
Test = CodewarsTest::Test

def describe(message, &block)
  Test.describe(message, &block)
end

def it(message, &block)
  Test.it(message, &block)
end

def before(&block)
  Test.before(&block)
end

def after(&block)
  Test.after(&block)
end
