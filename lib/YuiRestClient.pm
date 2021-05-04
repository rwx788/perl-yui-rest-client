# SUSE's openQA tests
#
# Copyright © 2021 SUSE LLC
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved. This file is offered as-is,
# without any warranty.

# Maintainer: QE YaST <qa-sle-yast@suse.de>

package YuiRestClient 0.1;
use strict;
use warnings;

use constant API_VERSION => 'v1';

use YuiRestClient::App;
use YuiRestClient::Wait;

=head1 NAME

YuiRestClient - Perl module to interact with YaST applications via libyui-rest-api.

=cut

1;
