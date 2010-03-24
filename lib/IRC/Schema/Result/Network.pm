package IRC::Schema::Result::Network;

use strict;
use warnings;

use parent 'IRC::Schema::Result';
use CLASS;

CLASS->table('Networks');

CLASS->add_columns(
   id => {
      data_type => 'int',
      is_auto_increment => 1,
   },
   name => {
		data_type => 'varchar',
		size      => 100,
   },
);

CLASS->set_primary_key('id');

CLASS->add_unique_constraint([qw( name )]);
1;

