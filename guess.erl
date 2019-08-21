-module(guess).

-compile(export_all).

guessNumber() ->
    io:format("Guess a number between 1 and 10\n"),
    {ok, [MyGuess]} = io:fread("My guess is: ", "~d\n"),
    guess(rand:uniform(10), MyGuess).

guess(SecretNum, SecretNum) ->
    io:format("nice you got it right c':");
guess(SecretNum, MyGuess) when SecretNum > MyGuess ->
    {ok, [NewGuess]} = io:fread("Guess Higher: ", "~d"),
    guess(SecretNum, NewGuess);
guess(SecretNum, MyGuess) when SecretNum < MyGuess ->
    {ok, [NewGuess]} = io:fread("Guess Lower: ", "~d"),
    guess(SecretNum, NewGuess).
