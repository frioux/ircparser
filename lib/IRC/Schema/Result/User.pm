package IRC::Schema::Result::User;

use DBIx::Class::Candy -base => 'IRC::Schema::Result';

table 'Users';

column id => {
   data_type => 'int',
   is_auto_increment => 1,
};

column handle => {
   data_type => 'varchar',
   size => 30,
};

primary_key 'id';

has_many messages => 'IRC::Schema::Result::Message', 'user_id';
#has_many
   #user_to_network_links =>
   #'IRC::Schema::Result::User_Network',
   #'user_id'
#;
#many_to_many networks => 'user_to_network_links', 'network';

unique_constraint [qw( handle )];

1;
