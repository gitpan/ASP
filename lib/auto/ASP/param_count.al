# NOTE: Derived from blib\lib\ASP.pm.
# Changes made here will be lost when autosplit again.
# See AutoSplit.pm.
package ASP;

#line 383 "blib\lib\ASP.pm (autosplit into blib\lib\auto/ASP/param_count.al)"
sub param_count {
	if ($main::('REQUEST_METHOD')->Item eq 'GET') {
		return $main::Request->QueryString($_[0])->{Count};
	} else {
		return $main::Request->Form($_[0])->{Count};
	}
}

# end of ASP::param_count
1;
