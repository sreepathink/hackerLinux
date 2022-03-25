read X;
read Y;
# Here in condition will be placed under two square bracks and round bracks
# In condition we can use both -gt / > symbol, Its upto our discretion.
if [[($X -gt $Y)]];  
then 
echo  X is greater than Y ;
elif [[($X -lt $Y)]];
then 
echo  X is less than Y ;
elif [[($X -eq $Y)]];
then 
echo  X is equal to Y ;
fi
