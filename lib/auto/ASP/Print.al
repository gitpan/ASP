# NOTE: Derived from blib\lib\ASP.pm.
# Changes made here will be lost when autosplit again.
# See AutoSplit.pm.
package ASP;

#line 208 "blib\lib\ASP.pm (autosplit into blib\lib\auto/ASP/Print.al)"
sub Print {
	for (@_) {
		if ( length($_) > 128000 ) {
			ASP::Print( unpack('a128000a*', $_) );
		} else {
			$main::Response->Write($_);
		}
	}
}

# end of ASP::Print
1;
