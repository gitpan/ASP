# NOTE: Derived from blib\lib\ASP.pm.
# Changes made here will be lost when autosplit again.
# See AutoSplit.pm.
package ASP;

#line 437 "blib\lib\ASP.pm (autosplit into blib\lib\auto/ASP/expire_calc.al)"
# These two functions are ripped from CGI.pm
sub expire_calc {
    my($time) = @_;
    my(%mult) = ('s'=>1,
                 'm'=>60,
                 'h'=>60*60,
                 'd'=>60*60*24,
                 'M'=>60*60*24*30,
                 'y'=>60*60*24*365);
    # format for time can be in any of the forms...
    # "now" -- expire immediately
    # "+180s" -- in 180 seconds
    # "+2m" -- in 2 minutes
    # "+12h" -- in 12 hours
    # "+1d"  -- in 1 day
    # "+3M"  -- in 3 months
    # "+2y"  -- in 2 years
    # "-3m"  -- 3 minutes ago(!)
    # If you don't supply one of these forms, we assume you are
    # specifying the date yourself
    my $offset;
    if ( !$time || $time eq 'now' ) {
        $offset = 0;
    } elsif ( $time =~ /^([+-]?\d+)([mhdMy]?)/ ) {
        $offset = ($mult{$2} || 1)*$1;
    } else {
        return $time;
    }
    return ($time + $offset);
}

# end of ASP::expire_calc
1;
