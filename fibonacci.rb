def fibs(n)
  fib_m2 = 0
  fib_m1 = 1
  ary = [fib_m2, fib_m1]
  (n-2).times do
    fib = fib_m1 + fib_m2
    ary << fib
    fib_m1, fib_m2 = fib, fib_m1
  end
  return ary[0...n] if n < 2
  ary
end

puts fibs(1).join(", ")
puts fibs(2).join(", ")
puts fibs(3).join(", ")
puts fibs(5).join(", ")
puts fibs(10).join(", ")


def fibs_rec(n)
  return [0, 1][0...n] if n < 3
  return (fib = fibs_rec(n-1)) + [fib[-1] + fib[-2]]
end

puts fibs_rec(1).join(", ")
puts fibs_rec(2).join(", ")
puts fibs_rec(3).join(", ")
puts fibs_rec(5).join(", ")
puts fibs_rec(10).join(", ")
puts fibs_rec(50).join(", ")
