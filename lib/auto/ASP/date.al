# NOTE: Derived from blib\lib\ASP.pm.
# Changes made here will be lost when autosplit again.
# See AutoSplit.pm.
package ASP;

#line 467 "blib\lib\ASP.pm (autosplit into blib\lib\auto/ASP/date.al)"
sub date {
	my($time,$format) = @_;
	my(@MON)=qw/Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec/;
	my(@WDAY) = qw/Sun Mon Tue Wed Thu Fri Sat/;

	# pass through preformatted dates for the sake of expire_calc()
	return $time if ("$time" =~ m/^[^0-9]/o);

	# make HTTP/cookie date string from GMT'ed time
	# (cookies use '-' as date separator, HTTP uses ' ')
	my($sc) = ' ';
	$sc = '-' if $format eq "cookie";
	my($sec,$min,$hour,$mday,$mon,$year,$wday) = gmtime($time);
	$year += 1900;
	return sprintf( "%s, %02d$sc%s$sc%04d %02d:%02d:%02d GMT",
		$WDAY[$wday], $mday, $MON[$mon], $year, $hour, $min, $sec );
}

# end of ASP::date
1;
