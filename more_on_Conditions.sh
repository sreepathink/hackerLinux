read x;
read y;
read z;

xy= $x + $y;
yz= $y + $z;
zx = $z + $x;

if [ (1 -le $x) ]; then
#if [[(1 <= $x) && ( $x <= 1000) && (1 <= $y) && ($y <= 1000) && (1 <= $z) && ($z <= 1000) && ($xy > $z) && ($yz > $x) && ($zx > $y)]];

  elif [[($x == $y) && ($y==$z)]]; then 

    echo "EQUILATERAL"
# Whitespace between the Variable and == is mandatory if not it wil show the error
    elif [[($x == $y) || ($y == $z) || ( $z == $x )]]; then
      echo "ISOSCELES" 
        else
          echo "SCALENE"
fi
