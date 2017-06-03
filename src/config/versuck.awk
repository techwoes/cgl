#!/usr/bin/nawk -f 
#
# Awk program for version extraction.
# $Id: versuck.awk,v 1.1 2004/11/20 06:18:56 harding Exp $
#

/^#@/ {

	if (tag == "") {
		print "versplit.awk: "\
		    "No tag for version to extract!" > "/dev/stderr";
		exit;
	}

	if ($1 == "#@all" || $1 == "#@endonly") {
		out = 1;
	} else if ($1 == "#@none" ) {
		out = 0;
	} else if ($1 == "#@only") {
		if (matchtag(tag))
			out = 1;
		else
			out = 0;
	} else if ($1 == "#@not" || $1 == "#@end") {
		if (matchtag(tag))
			out = 0;
		else
			out = 1;
	} else if ($1 == "#@toggle") {
		if (matchtag(tag))
			out = !out;
	}

	next;
}

{
	if (out)
		print;
}

function matchtag(t) {
	for (i = 2; i <= NF; i++) {
		if (t ~ $i)
			return 1
	}
	return 0
}
