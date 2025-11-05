# $1 = The name of the folder containing rtl build artifacts
./make_xsa
cp project.runs/impl_1/platform.xsa $1
cp project.runs/impl_1/memory.map  $1
echo "Performing release of $1"
release_rtl -rtl $1 
