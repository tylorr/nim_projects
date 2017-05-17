import os, strutils

const E = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274"
proc get_e_digits*(digits: int): string =
  E[0..digits+1]

when isMainModule:
  if paramCount() != 1:
    quit("Usage: ./e_to_n_digit DIGITS", QuitFailure)

  const kMaxDigits = E.len - 2
  let digits = min(parseInt(paramStr(1)), kMaxDigits)

  if digits <= 0:
    quit("ERROR: DIGITS parameter must be 1 or greater", QuitFailure)

  echo get_e_digits(digits)
