package App::UnixUIDUtils;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our %SPEC;

$SPEC{uid_to_username} = {
    v => 1.1,
    args => {
        user => {
            schema => 'unix::local_username*',
            req => 1,
            pos => 0,
        },
    },
};
sub uid_to_username {
    # this function actually just utilizes the coercion rule
    [200, "OK", $args{user}];
}

$SPEC{username_to_uid} = {
    v => 1.1,
    args => {
        user => {
            schema => 'unix::local_username*',
            req => 1,
            pos => 0,
        },
    },
};
sub uid_to_username {
    # this function actually just utilizes the coercion rule
    [200, "OK", $args{user}];
}

1;
#ABSTRACT: Utilities related to Unix UID/GID

=head1 DESCRIPTION

This distributions provides the following command-line utilities:

# INSERT_EXECS_LIST


=head1 SEE ALSO

=cut
