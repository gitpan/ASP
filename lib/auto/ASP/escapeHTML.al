# NOTE: Derived from blib\lib\ASP.pm.
# Changes made here will be lost when autosplit again.
# See AutoSplit.pm.
package ASP;

#line 289 "blib\lib\ASP.pm (autosplit into blib\lib\auto/ASP/escapeHTML.al)"
sub escapeHTML {
	my ($flag, @args) = (0, @_);
	@args = @{$args[0]} and $flag++ if ref $args[0] eq "ARRAY"; 
	map { $_ = $Server->HTMLEncode($_) } @args;
	$flag ? \@args : @args;
}

# end of ASP::escapeHTML
1;
