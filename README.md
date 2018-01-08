Comparing the magic comment for frozen string literals.

# 2.4.2

```
$ ruby runner.rb

Running file: bench_frozen.rb
Rehearsal ------------------------------------------
frozen  12.580000   0.000000  12.580000 ( 12.588475)
-------------------------------- total: 12.580000sec

             user     system      total        real
frozen  12.960000   0.000000  12.960000 ( 12.949873)
GC count: 8745

Running file: bench_unfrozen.rb
Rehearsal --------------------------------------------
unfrozen  12.660000   0.000000  12.660000 ( 12.661433)
---------------------------------- total: 12.660000sec

               user     system      total        real
unfrozen  12.380000   0.000000  12.380000 ( 12.388077)
GC count: 9805

```

# 2.5

```
$ ruby runner.rb

Running file: bench_frozen.rb
Rehearsal ------------------------------------------
frozen  13.552000   0.000000  13.552000 ( 13.554256)
-------------------------------- total: 13.552000sec

             user     system      total        real
frozen  13.256000   0.000000  13.256000 ( 13.257631)
GC count: 18205

Running file: bench_unfrozen.rb
Rehearsal --------------------------------------------
unfrozen  13.676000   0.000000  13.676000 ( 13.676287)
---------------------------------- total: 13.676000sec

               user     system      total        real
unfrozen  13.340000   0.000000  13.340000 ( 13.340263)
GC count: 20962

```

# Conclusion

Test variability is greater than the performance difference for frozen vs unfrozen literals.

Ruby 2.5 actually has a small regression when parsing extremely simple JSON messages. This difference is actually measurable and greater than frozen vs unfrozen string differences.
