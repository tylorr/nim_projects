when isMainModule:
  for n in 1..100:
    let mod3 = n mod 3 == 0
    let mod5 = n mod 5 == 0
    if mod3:
      stdout.write "Fizz"
    if mod5:
      stdout.write "Buzz"

    if not mod3 and not mod5:
      stdout.writeLine n
    else:
      stdout.writeLine ""
