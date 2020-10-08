def staircase(n)
  (1..n).each do |i|        
    result = ''
    (n - i).times { result += " "}
    i.times { result += "#"}

    p result
  end
end

staircase(4)

