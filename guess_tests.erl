-module(guess_tests).

-include_lib("eunit/include/eunit.hrl").

guess_test() -> ?assertEqual(5, (guess:guessNumber())).
