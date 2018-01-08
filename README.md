Comparing the magic comment for frozen string literals.

# 2.4.2

```
$ bundle exec ruby runner.rb

Running file: bench_frozen.rb
Rehearsal ------------------------------------------
frozen  18.550000   7.970000  26.520000 ( 26.863213)
-------------------------------- total: 26.520000sec

             user     system      total        real
frozen  20.000000   8.010000  28.010000 ( 28.497608)
GC count: 1759

Running file: bench_unfrozen.rb
Rehearsal --------------------------------------------
unfrozen  19.540000   8.040000  27.580000 ( 28.023985)
---------------------------------- total: 27.580000sec

               user     system      total        real
unfrozen  18.580000   8.030000  26.610000 ( 26.944228)
GC count: 1779
```

# 2.5

```
$ bundle exec ruby runner.rb

Running file: bench_frozen.rb
Rehearsal ------------------------------------------
frozen  17.248000   6.764000  24.012000 ( 24.393984)
-------------------------------- total: 24.012000sec

user     system      total        real
frozen  17.584000   7.132000  24.716000 ( 25.155511)
GC count: 2695

Running file: bench_unfrozen.rb
Rehearsal --------------------------------------------
unfrozen  17.560000   7.316000  24.876000 ( 25.291381)
---------------------------------- total: 24.876000sec

user     system      total        real
unfrozen  17.124000   6.904000  24.028000 ( 24.349144)
GC count: 2782
```

# Conclusion

Difference between frozen and unfrozen literals is less than the test variability.

Difference between Ruby 2.5 and Ruby 2.4.2 is measurable and consistent.
