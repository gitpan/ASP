# NOTE: Derived from blib\lib\ASP.pm.
# Changes made here will be lost when autosplit again.
# See AutoSplit.pm.
package ASP;

#line 423 "blib\lib\ASP.pm (autosplit into blib\lib\auto/ASP/BinaryWrite.al)"
sub BinaryWrite {
	use Win32::OLE::Variant;
	for (@_) {
		if (length($_) > 128000) {
			BinaryWrite ( unpack('a128000a*', $_) );
		} else {
			$main::Response->BinaryWrite(
				Win32::OLE::Variant->new( VT_UI1, $_ )
			);
		}
	}
}

# end of ASP::BinaryWrite
1;
