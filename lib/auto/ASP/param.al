# NOTE: Derived from blib\lib\ASP.pm.
# Changes made here will be lost when autosplit again.
# See AutoSplit.pm.
package ASP;

#line 336 "blib\lib\ASP.pm (autosplit into blib\lib\auto/ASP/param.al)"
sub param {
	unless (@_) {
		my @keys;
		push( @keys, $_ ) for ( Win32::OLE::in $main::Request->QueryString );
		push( @keys, $_ ) for ( Win32::OLE::in $main::Request->Form );
		return @keys;
	}
	$_[1] = 1 unless defined $_[1];
	unless (wantarray) {
		if ($main::ENV{'REQUEST_METHOD'} eq 'GET') {
			return $main::Request->QueryString($_[0])->Item($_[1]);
		} else {
			return $main::Request->Form($_[0])->Item($_[1]);
		}
	} else {
		my ($i, @ret);
		if ($main::ENV{'REQUEST_METHOD'} eq 'GET') {
			my $count = $main::Request->QueryString($_[0])->{Count};
			for ($i = 1; $i <= $count; $i++ ) {
				push @ret, $main::Request->QueryString($_[0])->Item($i);
			}
		} else {
			my $count = $main::Request->Form($_[0])->{Count};
			for ($i = 1; $i <= $count; $i++) {
				push @ret, $main::Request->Form($_[0])->Item($i);
			}
		}
		return @ret;
	}
}

# end of ASP::param
1;
