# frozen_string_literal: true
require 'json'

def test
  '{"message": "hello world"}'
end

require 'benchmark'

Benchmark.bmbm do |x|
  x.report('frozen') { 1_000_000.times { JSON.parse(test) } }
end
