use strict;
BEGIN { require Lexical::Importer; Lexical::Importer->_unimport_lex_var('$foo') }
push @main::values, $foo;
1;
