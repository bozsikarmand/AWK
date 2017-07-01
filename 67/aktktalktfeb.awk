#!/usr/bin/awk -f
# A tesztmappak a touch -a -m -t opcioval keszultek

BEGIN {
  while (("ls -lR | grep '^d'" | getline) > 0) {
    if ($6 == "febr") {
        print
    }
  }
}
