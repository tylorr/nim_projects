import os, strutils

proc even(n: int): bool =
  n mod 2 == 0

when isMainModule:
  if paramCount() != 1:
    quit("Usage: ./collatz_conjecture NUM", QuitFailure);

  var num = parseInt(paramStr(1))

  if num <= 1:
    quit("ERROR: NUM parameter must be greater than 1", QuitFailure)

  var steps = 0
  while num != 1:
    if even(num):
      num = num div 2
    else:
      num = num * 3 + 1
    inc steps
  echo steps
