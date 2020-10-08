def staircase(n):
  for i in range(1, 5):
    result = ''
    for _ in range(1, (n - i) + 1): result += " "
    for _ in range(1, i + 1): result += "#"
    
    print(result)

staircase(4)
