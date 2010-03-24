package IRC::Schema::Result::Mode;

use strict;
use warnings;

use parent 'IRC::Schema::Result';
use CLASS;

CLASS->table('Modes');

CLASS->add_columns(
   id => {
      data_type         => 'int',
      is_auto_increment => 1,
   },
   name => {
      data_type => 'varchar',
      size      => 30,
   },
   code => {
      data_type => 'char',
      size      => '1',
   },
);

CLASS->set_primary_key('id');

CLASS->add_unique_constraint([qw( name )]);
CLASS->add_unique_constraint([qw( code )]);

1;
