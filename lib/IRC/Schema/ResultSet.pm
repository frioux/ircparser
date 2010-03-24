package IRC::Schema::ResultSet;

use strict;
use warnings;

use feature ':5.10';

use parent 'DBIx::Class::ResultSet';

__PACKAGE__->load_components('Helper::IgnoreWantarray');

1;
