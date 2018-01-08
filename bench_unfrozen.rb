# frozen_string_literal: false
require 'json'

def test
  '{"message": "hello world"}'
end

require 'benchmark'

Benchmark.bmbm do |x|
  x.report('unfrozen') { 10_000_000.times { JSON.parse(test) } }
end
