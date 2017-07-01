#!/usr/bin/awk -f

BEGIN {
  FS=";";
}
{
  if ($4 != "" && $4 != 0 && $5 != 0) {
    print $1, $2, $3;
  }
}
