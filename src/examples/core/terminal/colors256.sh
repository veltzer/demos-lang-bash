\#\!/bin/bash -eu

for ((i = 0; i < 256; i++)); do
  printf "\x1b[48;5;%sm%3d\e[0m " $i $i
  if ((i % 16 == 15)); then
    echo
  fi
done
