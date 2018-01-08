# frozen_string_literal: true
require 'redis'

$redis = Redis.new
$redis.set 'foo', 'bar'

def test
  $redis.get 'foo'
end

require 'benchmark'

Benchmark.bmbm do |x|
  x.report('frozen') { 1_000_000.times { test } }
end
