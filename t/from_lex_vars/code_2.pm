BEGIN { require Lexical::Importer; Lexical::Importer->_import_lex_var('&foo' => sub { 2 }) }
push @main::values, &foo;
1;
