# NOTE: Derived from blib\lib\ASP.pm.
# Changes made here will be lost when autosplit again.
# See AutoSplit.pm.
package ASP;

#line 232 "blib\lib\ASP.pm (autosplit into blib\lib\auto/ASP/HTMLPrint.al)"
sub HTMLPrint { map { ASP::Print($Server->HTMLEncode($_)) } @_ ; }

# end of ASP::HTMLPrint
1;
