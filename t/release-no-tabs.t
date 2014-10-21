
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.08

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/Treex/Block/W2A/CS/FixAtreeAfterMcD.pm',
    'lib/Treex/Block/W2A/CS/FixIsMember.pm',
    'lib/Treex/Block/W2A/CS/FixReflexivePronouns.pm',
    'lib/Treex/Block/W2A/CS/FixReflexiveTantum.pm',
    'lib/Treex/Block/W2A/CS/ParseMSTperl.pm',
    'lib/Treex/Block/W2A/CS/TagMorphoDiTa.pm',
    'lib/Treex/Block/W2A/CS/Tokenize.pm',
    'lib/Treex/CS.pm',
    'lib/Treex/Tool/Lexicon/CS/Reflexivity.pm',
    't/00-compile.t',
    't/author-critic.t',
    't/author-test-eol.t',
    't/release-cpan-changes.t',
    't/release-dist-manifest.t',
    't/release-distmeta.t',
    't/release-kwalitee.t',
    't/release-minimum-version.t',
    't/release-mojibake.t',
    't/release-no-tabs.t',
    't/release-pod-coverage.t',
    't/release-pod-linkcheck.t',
    't/release-pod-syntax.t',
    't/release-portability.t',
    't/release-synopsis.t',
    't/release-test-version.t',
    't/release-unused-vars.t'
);

notabs_ok($_) foreach @files;
done_testing;
