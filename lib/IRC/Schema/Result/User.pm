package IRC::Schema::Result::User;

use strict;
use warnings;

use parent 'IRC::Schema::Result';
use CLASS;

CLASS->table('Users');

CLASS->add_columns(
   id => {
      data_type => 'int',
      is_auto_increment => 1,
   },
   handle => {
      data_type => 'varchar',
      size => 30,
   },
);

CLASS->set_primary_key('id');

CLASS->has_many(messages => 'IRC::Schema::Result::Message', 'user_id');
#CLASS->has_many(
   #user_to_network_links =>
   #'IRC::Schema::Result::User_Network',
   #'user_id'
#);
#CLASS->many_to_many(networks => 'user_to_network_links', 'network');

CLASS->add_unique_constraint([qw( handle )]);
1;
