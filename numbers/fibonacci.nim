import os, strutils

proc fib*(n: int): int =
  if n <= 1:
    n
  else:
    fib(n-1) + fib(n-2)

when isMainModule:
  if paramCount() != 1:
    quit("Usage: ./fib N", QuitFailure);

  let N = parseInt(paramStr(1))

  if N <= 0:
    quit("ERROR: N parameter must be 1 or greater", QuitFailure)

  echo fib(N)
