#!/usr/bin/awk -f

{
  tomb[$0]++;

  if (max < tomb[$0]) {
      max = tomb[$0];
      ki[max] = $0;
    }
}
END {
  print FILENAME;
  print max " " ki[max];
}
