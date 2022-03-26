# Read and initate the values
read N;
sum=0;

# Below conditions is inverese to constraints due to that  && -> to || its example of exclusive conditions.
if [[ (1 -ge "$N") || ($N -ge 500) ]]; then break; else continue; fi
# If above conditions passes then it will go  down and check below conditions.

#for Loop for  taking the inputs of  different  numbers
for((var=0;var<$N;var++)); do 
    read input;
    
   # readed values are check against the input conditions.
   if [[("-10000" -le "$input") && ($input -le 10000)]]; then sum=$((sum+input)); 
    else break 
   fi; 
done
printf "%.3f" $(echo "scale=4; $sum / $N " | bc );
