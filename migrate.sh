IFS=$'\n' read -d '' -r -a from < git_migrate
IFS=$'\n' read -d '' -r -a to < git_to_migrate
 
len=${#from[@]} # use for loop read all nameservers
 
echo ""
echo "Starting migration"
echo ""
 
for (( i=0; i<${len}; i++ ));
do
    tfrom=${from[$i]}
    tto=${to[$i]}
    tb=$(basename $tfrom)
    echo $tb
    echo "-----"
    echo "* mirroring"
    git clone --mirror $tfrom
    echo "* cd"
    cd $tb
    echo "* push"
    echo $tto
    git push --mirror $tto
    cd ..
    rm -rf $tb
done

