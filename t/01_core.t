use strict;
use warnings;
use Test::More;
use WebService::Klout;

my $klout;

subtest 'new' => sub {
    local $ENV{'KLOUT_API_KEY'} = 'KLOUT_API_KEY';
    $klout = new_ok('WebService::Klout');
};

subtest '_build_url' => sub {
    is(
        $klout->_build_url('score', 'twitter', 'twitpic'),
        'http://api.klout.com/1/klout.json?key=KLOUT_API_KEY&users=twitter,twitpic',
        'score url'
    );
};

done_testing;
