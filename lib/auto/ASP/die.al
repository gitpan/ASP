# NOTE: Derived from blib\lib\ASP.pm.
# Changes made here will be lost when autosplit again.
# See AutoSplit.pm.
package ASP;

#line 241 "blib\lib\ASP.pm (autosplit into blib\lib\auto/ASP/die.al)"
sub die {
	ASP::Print(@_, "</BODY></HTML>");
	_END;
	$main::Response->End();
	CORE::die();
}

# end of ASP::die
1;
