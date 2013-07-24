vala-gen-introspect seed .
sed -e "s/GArgument/GIArgument/g" < seed.gi > seed.gi.tmp && mv seed.gi.tmp seed.gi
vapigen --pkg GIRepository-2.0 --library seed seed.gi
