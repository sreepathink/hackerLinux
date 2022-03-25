read line;

# printf will give modified output
# scale : It will decides numbers after point. if scale =4, it will show 0.1234 as Output
# | = it will take the arugument from one to two.
# bc = base Conversion/Basic Calculator: convert from one base number system to another.
# printf [-v var] format [arguments] ex printf "Open issues: %s\nClosed issues: %s\n" "34" "65"

printf "%.3f" $(echo "scale = 4; $line" | bc);
     
