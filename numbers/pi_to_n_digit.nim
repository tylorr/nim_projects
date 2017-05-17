import os, strutils

const PI = "3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"
proc get_pi_digits*(digits: int): string =
  PI[0..digits+1]

when isMainModule:
  if paramCount() != 1:
    quit("Usage: ./pi_to_n_digit DIGITS", QuitFailure);

  const kMaxDigits = PI.len - 2
  let digits = min(parseInt(paramStr(1)), kMaxDigits)

  if digits <= 0:
    quit("ERROR: DIGITS parameter must be 1 or greater", QuitFailure)

  echo get_pi_digits(digits)
