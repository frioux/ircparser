package IRC::Schema::Result::Message;

use strict;
use warnings;

use parent 'IRC::Schema::Result';
use CLASS;

CLASS->table('Messages');

CLASS->add_columns(
   id => {
      data_type => 'int',
      is_auto_increment => 1,
   },
   user_id => {
		data_type => 'int',
   },
   mode_id => {
		data_type => 'int',
   },
   channel_id => {
		data_type => 'int',
   },
	value => {
		data_type => 'varchar',
		size      => 100,
	},
	when_said => {
		data_type => 'datetime',
	},
);

CLASS->set_primary_key('id');

CLASS->belongs_to(user => 'IRC::Schema::Result::User', 'user_id');
CLASS->belongs_to(mode => 'IRC::Schema::Result::Mode', 'mode_id');
CLASS->belongs_to(channel => 'IRC::Schema::Result::Channel', 'channel_id');

1;

