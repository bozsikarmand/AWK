#!/usr/bin/awk -f

BEGIN {
   min = max = $5
   minnev = maxnev = $9
}
{
  if (NR==5 || $5 < min) {
    min = $5;
    minnev = $9;
    atlag += $5
  }
  if (NR==5 || $5 > max) {
    max = $5;
    maxnev = $9;
    atlag += $5
  }
}
END {
  if (NR > 0) {
    print min, minnev;
    print max, maxnev;
    print atlag / NR;
  }
}
