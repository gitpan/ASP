# NOTE: Derived from blib\lib\ASP.pm.
# Changes made here will be lost when autosplit again.
# See AutoSplit.pm.
package ASP;

#line 304 "blib\lib\ASP.pm (autosplit into blib\lib\auto/ASP/unescapeHTML.al)"
sub unescapeHTML {
	my ($flag, @args) = (0, @_);
	@args = @{$args[0]} and $flag++ if ref $args[0] eq "ARRAY"; 
	map {
		s/&amp;/&/gi;
		s/&quot;/"/gi;
		s/&nbsp;/ /gi;
		s/&gt;/>/gi;
		s/&lt;/</gi;
		s/&#(\d+);/chr($1)/ge;
		s/&#x([0-9a-f]+);/chr(hex($1))/gi;
	} @args
	$flag ? \@args : @args;
}

# end of ASP::unescapeHTML
1;
