iterator digits(n: int): int =
  var num = n
  while num > 0:
    yield num mod 10
    num = num div 10

proc happy(n: int): int =
  var sum = 0
  for digit in digits(n):
    sum += digit * digit
  return sum

proc is_happy(n: int): bool =
  return n == 1 or n > 4 and is_happy(happy(n))

when isMainModule:
  var happyCount = 0
  var number = 1
  while (happyCount < 8):
    if is_happy(number):
      inc happyCount
      echo number
    number += 1
