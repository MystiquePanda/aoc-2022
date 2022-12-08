.sh.nsew:({(x;y+1)};{(x;y-1)};{(x+1;y)};{(x-1;y)});
.sh.nsewd:({(x;y+1)};{(x;y-1)};{(x+1;y)};{(x-1;y)};{(x-1;y+1)};{(x+1;y+1)};{(x-1;y-1)};{(x+1;y-1)});
.sh.nsew_edge:({x,/:(neg -1+z-y)#til z};{z;x,/:reverse y#til y};{((neg -1+z-x)#til z),\:y};{z;(reverse x#til x),\:y});
