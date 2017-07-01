#!/usr/bin/awk -f

BEGIN {
        FS=","
        print "<html>"
        print "<body>"
        print "<table border=1>"
}
{
  for (i = 1; i <= NF; i++) {
      printf("<tr><td>"$i"</td></tr>")
  }
}
END {
      print "</table>"
      print "</body>"
      print "</html>"
}
