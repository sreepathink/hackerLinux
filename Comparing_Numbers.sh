read x; read y; read z;

xy= $x + $y;
yz= $y + $z;
zx = $z + $x;

if [[(1 -le $x) && ( $x -le 1000) && (1 -le $y) && ($y -le 1000) && (1 -le $z) && ($z -le 1000) && ($xy -ge $z) && ($yz -ge $x) && ($zx -ge $y)]]; then echo

elif [[($x -eq $y) && ($y -eq $z)]]; then echo "EQUILATERAL"
# Whitespace between the Variable and == is mandatory if not it will execute in correctly

elif [[($x == $y) || ($y == $z) || ( $z == $x )]]; then echo "ISOSCELES" 

else echo "SCALENE"

fi
