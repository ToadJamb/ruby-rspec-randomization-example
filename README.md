RSpec Randomization Sample Project
==================================


Purpose
-------

This project outlines an issue with RSpec's implementation of randomization
that requires users to invoke srand in a way that makes randomization
in specs not as random as it should be (assuming the user would like at some
point to reproduce the randomization used for a given test run).


Overview
--------

There are two test suites in this project.
One is for RSpec and can be used to directly replicate the problem.
The second is a Cucumber feature that consistently fails.

There is also a branch in this repo named 'bad-solution' that
is the only way I have found thus far to get around this issue
(without changing RSpec).

There is a Gemfile.lock, along with .ruby-version and .ruby-gemset
which include the settings I was using.

I have only checked into this on Ubuntu 12.04, but it fails on
multiple machines running that OS.


RSpec Project
-------------

Running the following command repeatedly should render different output
every time it is run:

        $ bundle exec rspec --seed 1234

Feel free to use whatever seed you like.


Cucumber Project
----------------

This feature should consistently fail.

        $ bundle exec cucumber


Final Notes
-----------

The cucumber test suite consistently fails for me.
Hopefully, it fails for you, too.
Otherwise the problem is a lot more random than I thought.
