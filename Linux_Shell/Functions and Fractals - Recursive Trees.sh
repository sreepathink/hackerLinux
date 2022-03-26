declare -A a
# a is decleared as Array variable in -A
# d - depth
# l = length
# r = row
# c = column

f() {
    # Local Variable declarations 
    local d=$1 l=$2 r=$3 c=$4 # 2 16 63 49
    [[ $d -eq 0 ]] && return 
    
    # Just for assigining 1 in correct index
    for ((i=l; i; i--)); do # i=16,15
        a[$((r-i)).$c]=1 #63-16 = (47,49)=1, (46,49)=1 Staright trunk will be  created
    done
    
    ((r -= l)) # r=r-l      r=63;l=16 -> r = 47 
    
    # Slant branching structure on double side
    for ((i=l; i; i--)); do         # l=i= 16, r=47
        a[$((r-i)).$((c-i))]=1      # (47-16,49-16) = (31,33) 1 a[32,34]
        a[$((r-i)).$((c+i))]=1      # (47-16,49+16) = (31,65) =1 a[32,66]
    done
    # Shorting down the branch size
    f $((d-1)) $((l/2)) $((r-l)) $((c-l)) # f $((d-1)) is deciding factor of recursive functions
    f $((d-1)) $((l/2)) $((r-l)) $((c+l))
}

read n
f $n 16 63 49
# Above line sending four arguments to functions

# Transversing of the matrix values
for ((i=0; i<63; i++)); do          # i = 0;
    for ((j=0; j<100; j++)); do     # j = 0;
        if [[ ${a[$i.$j]} ]]; then  # how this condition was going to be true
            printf 1
        else
            printf _
        fi
    done
    echo
done

#declare: declare [-aAfFgilnrtux] [-p] [name[=value] ...]
#    Set variable values and attributes.
#
#    Declare variables and give them attributes.  If no NAMEs are given,
#    display the attributes and values of all variables.
#
#    Options:
#      -f        restrict action or display to function names and definitions
#      -F        restrict display to function names only (plus line number and
#                source file when debugging)
#      -g        create global variables when used in a shell function; otherwise
#                ignored
#      -p        display the attributes and value of each NAME
#
#    Options which set attributes:
#      -a        to make NAMEs indexed arrays (if supported)
#      -A        to make NAMEs associative arrays (if supported)
#      -i        to make NAMEs have the `integer' attribute
#      -l        to convert NAMEs to lower case on assignment
#      -n        make NAME a reference to the variable named by its value
#      -r        to make NAMEs readonly
#      -t        to make NAMEs have the `trace' attribute
#      -u        to convert NAMEs to upper case on assignment
#      -x        to make NAMEs export
#
#    Using `+' instead of `-' turns off the given attribute.
#
#    Variables with the integer attribute have arithmetic evaluation (see
#    the `let' command) performed when the variable is assigned a value.
#
#    When used in a function, `declare' makes NAMEs local, as with the `local'
#    command.  The `-g' option suppresses this behavior.
#
#    Exit Status:
#    Returns success unless an invalid option is supplied or a variable
#    assignment error occurs.#
