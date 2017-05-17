import os, strutils, math, sequtils

proc get_prime_factors*(n: int): seq[int] =
  result = @[]
  var n = n
  while n mod 2 == 0:
    result.add(2)
    n = n div 2

  for i in countup(3, int(sqrt(float(n))), 2):
    while n mod i == 0:
      result.add(i)
      n = n div i

  if n > 2:
    result.add(n)

when isMainModule:
  if paramCount() != 1:
    quit("Usage: ./prime_factorization N", QuitFailure);

  let N = parseInt(paramStr(1))

  if N <= 0:
    quit("ERROR: N parameter must be 1 or greater", QuitFailure)

  let primes = get_prime_factors(N)
  echo join(mapIt(primes, string, $it), " ")
