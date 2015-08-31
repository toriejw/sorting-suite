module SortingSuite
  class Benchmark
    def time(sort_type, data = [])
      start_time = Time.now
      sort_type.new(data).sort
      end_time = Time.now

      time_passed = end_time - start_time

      puts "#{sort_type.new([]).class.name.split("::")[1]} took #{time_passed} seconds."
    end                                                                                   # => :time

    def fastest
    end          # => :fastest

    def slowest
    end          # => :slowest
  end            # => :slowest
end              # => :slowest


benchmark = SortingSuite::Benchmark.new            # => #<SortingSuite::Benchmark:0x007ff9f89b8828>
benchmark.time(SortingSuite::BubbleSort, [3,2,1])  # ~> NameError: uninitialized constant SortingSuite::BubbleSort

# ~> NameError
# ~> uninitialized constant SortingSuite::BubbleSort
# ~>
# ~> /Users/Torie/Documents/turing/module_1/sorting-suite/lib/benchmark.rb:23:in `<main>'
