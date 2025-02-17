import std/os           # import os module from stdlib
import flags/argParser  # import arg parser from nitch/flags/argParser
import funcs/perform    # perform funcs for flags

let
  arg: int = argParser(commandLineParams(), paramCount()) # called argParser with args seq and amount of args

# case return of argParser
case arg:

# if no flags
of 0:
  arg0()  # cal arg0 func from perform

# if -h --help flags
of 1:
  arg1()  # cal arg1 func from perform

# if -v --version flags
of 2:
  arg2()  # cal arg2 func from perform

# nim xdd
else:
  arg0()
