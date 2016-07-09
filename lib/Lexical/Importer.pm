package Lexical::Importer;
use 5.008;
use warnings;
use strict;

use Lexical::SealRequireHints 0.006;
use Importer 0.013;
use parent 'Importer';

our $VERSION = "0.000001";

require XSLoader;
XSLoader::load(__PACKAGE__, $VERSION);

sub import {
    my $class = shift;
    $class->SUPER::import(\&set_symbol, @_);
}

sub set_symbol {
    my ($name, $ref, $sig) = @_;
    __PACKAGE__->_import_lex_var("$sig$name" => $ref);
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Lexical::Importer - Importer + Lexical subs/vars.

=head1 DESCRIPTION

FIXME

=head1 LEXICAL-VAR FORK

The L<Lexical-Importer> module is bundled with a fork of the L<Lexical::Var> XS
code. This fork is necessary due to L<Lexical::Var> being broken on newer
perls. The author of the original package is not accepting third party patches,
and has not yet fixed the issues himself. Once a version of L<Lexical::Var>
ships with a fix for newer perls this fork will likely be removed.

=head2 AUTHOR

Andrew Main (Zefram) <zefram@fysh.org>

=head2 COPYRIGHT

Copyright (C) 2009, 2010, 2011, 2012, 2013
Andrew Main (Zefram) <zefram@fysh.org>

=head2 LICENSE

This module is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=head1 SOURCE

The source code repository for Lexical-Importer can be found at
F<http://github.com/FIXME/>.

=head1 MAINTAINERS

=over 4

=item Chad Granum E<lt>exodist@cpan.orgE<gt>

=back

=head1 AUTHORS

=over 4

=item Chad Granum E<lt>exodist@cpan.orgE<gt>

=back

=head1 COPYRIGHT

Copyright 2016 Chad Granum E<lt>exodist@cpan.orgE<gt>.

This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

See F<http://dev.perl.org/licenses/>

=cut
