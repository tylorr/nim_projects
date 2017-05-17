import os, strutils, math, sequtils

proc is_prime*(n: int): bool =
  if n <= 1: return false
  if n <= 3: return true

  if (n mod 2 == 0 or n mod 3 == 0): return false

  for i in countUp(5, int(sqrt(float(n))), 6):
    if n mod i == 0 or n mod (i + 2) == 0:
      return false
  return true

proc next_prime*(n: int): int =
  result = n + 1
  while not is_prime(result):
    result = result + 1

when isMainModule:
  proc yes(question: string): bool =
    while true:
      echo question, " (Y/n)"
      case readLine(stdin)
      of "y", "Y", "yes", "Yes": return true
      of "n", "N", "no", "No": return false
      of "": return true
      else: discard

  var n = 2
  echo 2
  while true:
    if yes("Do you want to see the next prime?"):
      n = next_prime(n)
      echo n
    else:
      quit(QuitSuccess)
