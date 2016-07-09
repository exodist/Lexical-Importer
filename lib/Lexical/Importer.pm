package Lexical::Importer;

{ use 5.008; }
use Lexical::SealRequireHints 0.006;
use warnings;
use strict;

our $VERSION = "0.000001";

require XSLoader;
XSLoader::load(__PACKAGE__, $VERSION);

1;

__END__


=head1 LEXICAL-VAR FORK

The L<Lexical-Importer> module is bundled with a fork of L<Lexical::Var>. This
fork is necessary due to L<Lexical::Var> being broken on newer perls. The
author of the original package is not accepting third party patches, and has
not yet fixed the issues himself. Once a version of L<Lexical::Var> ships with
a fix for newer perls this fork will likely be removed.

=head2 AUTHOR

Andrew Main (Zefram) <zefram@fysh.org>

=head2 COPYRIGHT

Copyright (C) 2009, 2010, 2011, 2012, 2013
Andrew Main (Zefram) <zefram@fysh.org>

=head2 LICENSE

This module is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.
