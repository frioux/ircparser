package IRC::Schema::Result::Channel;

use strict;
use warnings;

use parent 'IRC::Schema::Result';
use CLASS;

CLASS->table('Channels');

CLASS->add_columns(
   id => {
      data_type => 'int',
      is_auto_increment => 1,
   },
   name => {
		data_type => 'varchar',
		size      => 100,
   },
   network_id => {
		data_type => 'int',
   },
);

CLASS->set_primary_key('id');

CLASS->belongs_to(network => 'IRC::Schema::Result::Network', 'network_id');
CLASS->add_unique_constraint([qw( name )]);
1;

