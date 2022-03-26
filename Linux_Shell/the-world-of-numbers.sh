# Read the Values to variables X and Y    
    read X;
    read Y;
# Giving condition to the constraints under basic if condition    
if [[(-100 -lt $X) && ($Y -lt 100) && ($Y != 0) ]];
then
#Arithmatic Operations    
    echo $((X+Y));
    echo $((X-Y));
    echo $((X*Y));
    echo $((X/Y));
 
fi
