# NOTE: Derived from blib\lib\ASP.pm.
# Changes made here will be lost when autosplit again.
# See AutoSplit.pm.
package ASP;

#line 274 "blib\lib\ASP.pm (autosplit into blib\lib\auto/ASP/unescape.al)"
sub unescape {
	map {
		tr/+/ /;
		s/%([0-9a-fA-F]{2})/pack("c",hex($1))/ge;
	} @_;
}

# end of ASP::unescape
1;
