# NOTE: Derived from blib\lib\ASP.pm.
# Changes made here will be lost when autosplit again.
# See AutoSplit.pm.
package ASP;

#line 266 "blib\lib\ASP.pm (autosplit into blib\lib\auto/ASP/escape.al)"
sub escape { map { $Server->URLEncode($_) } @_; }

# end of ASP::escape
1;
