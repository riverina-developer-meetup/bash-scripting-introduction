echo "Hello, Riverina Developers!"
my_name="Alen"
echo "My name is $my_name!"

echo "For loop construct: "
for i in {1..10}; do
    echo "the current value of \$i is $i"
done
echo "while loop construct: "

(( j = 1 ))
while (( j <- 10 )); do
    echo "the current value of \$j is $j"
    (( j++ ))
done

for file in *; do
    if [[ "$file" == "bash_secrets.txt" ]]; then
        echo "$file doesn't exist! <_<....>_>..."
    elif [[  -d "$file" ]]; then
        echo "this is a dir: $file"
        echo "these are the files in directory $file:"
        for items in "$file"/*; do
            echo "$items"
        done
    else
        echo "$file is in this dir: $(pwd)"
    fi
done

my_arr=("cat" "dog" "mouse")
my_arr+=("kiwi")

echo "array length: ${#my_arr[@]}"

for animal in "${my_arr[@]}"; do
    case $animal in
    kiw*)
        echo "I love the ${animal}!" 
    ;;
    *)
        echo "What is a ${animal}??"
    ;;
    esac
done


function hello {
    echo "Hello $1!"
}

hello "Alen"