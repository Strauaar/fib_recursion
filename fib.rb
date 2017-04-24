def fibs integer
fbarr = []
integer = integer
  for i in (0..integer) do
    if i == 0
      fb = 0
      fbarr << fb
    elsif i == 1
      fb += 1
      fbarr << fb
    else
      fb = fbarr[-1] + fbarr[-2]
      fbarr << fb
    end
  end
   puts fbarr[-1]
end

fibs(7) # => 8

def fibs_rec integer

  integer < 2 ? integer : fibs_rec(integer - 1) + fibs_rec(integer - 2)

end

puts fibs_rec(7)
