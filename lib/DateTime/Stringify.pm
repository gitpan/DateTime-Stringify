package DateTime::Stringify;
use strict;
use DateTime;
use vars qw($VERSION);
$VERSION = '4.08';

sub import {
  eval q[
package DateTime;
use overload '""' => sub { return shift->datetime }
  ]; 
}

1;

__END__

=head1 NAME

DateTime::Stringify - DateTime objects

=head1 SYNOPSIS

  use DateTime;
  use DateTime::Stringify;

  my $dt = DateTime->now;
  print "The time is now $dt...\n";
  # The time is now 2004-02-13T16:12:47...

=head1 DESCRIPTION

The DateTime suite of modules are a comprehensive way of representing
and manipulating dates and times. However, interpolating a DateTime
object in a string results in the not-so-useful
"DateTime=HASH(0x800368)" or similar.

This module allows DateTime objects interpolated in strings to instead
print out their $dt->datetime representation (this is also the
$dt->iso8601 representation). This is probably more suitable for
programmers (debugging!) than end-users.

=head1 AUTHOR

Leon Brocard <acme@astray.com>

=head1 COPYRIGHT

Copyright (C) 2004, Leon Brocard

This module is free software; you can redistribute it or modify it under
the same terms as Perl itself.
