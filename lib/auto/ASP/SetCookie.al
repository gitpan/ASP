# NOTE: Derived from blib\lib\ASP.pm.
# Changes made here will be lost when autosplit again.
# See AutoSplit.pm.
package ASP;

#line 511 "blib\lib\ASP.pm (autosplit into blib\lib\auto/ASP/SetCookie.al)"
sub SetCookie {
	my ($name, $value, %hash) = @_;
	if( ref($value) eq 'HASH') {
		$value = join "&", map {$main::Server->URLEncode($_)."=".$main::Server->URLEncode($$value{$_})} keys(%$value);
	}
	$main::Response->AddHeader('Set-Cookie', join("",
		"$name=$value",
		($hash{-path} ? "; path=$hash{-path}" : ""),
		($hash{-domain} ? "; domain=$hash{-domain}" : ""),
		($hash{-secure} ? "; secure" : ""),
		($hash{-expires} ? "; expires=".&date( &expire_calc( $hash{-expires} ) ) : ""),
	) );
}

1;
# end of ASP::SetCookie
