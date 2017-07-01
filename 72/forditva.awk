#!/usr/bin/awk -f

BEGIN{
    system("ls -l -I lista > lista")
    while ((getline lista[++i] < "lista") > 0)
    {
      if (i % 2 == 1) {
          print lista[i];
      }
      else {
          print lista[i] | "rev";
          close("rev");
      }
    }
}
