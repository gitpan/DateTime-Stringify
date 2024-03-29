use Module::Build;
use strict;

my $build = Module::Build->new(
  create_makefile_pl => 'traditional',
  license     => 'perl',
  module_name => 'DateTime::Stringify',
  requires    => {
    'DateTime'    => '0.21',
    'Test::More'  => 0,
  },
);
$build->create_build_script;
