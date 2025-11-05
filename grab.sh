dest=bitstream
base=vpk120_gpio
impl=project.runs/impl_1
mkdir $dest 2>/dev/null

bit=$impl/top_level_wrapper.pdi
ltx=$impl/top_level_wrapper.ltx
bin=$impl/top_level_wrapper.bin
map=$impl/memory.map
xsa=$impl/platform.xsa

if [ ! -f $bit ]; then
    echo "${bit} doesn't appear to exist"
    exit 1
fi

rm -rf ${dest}/${base}.bit
rm -rf ${dest}/${base}.bin
rm -rf ${dest}/${base}.ltx
rm -rf ${dest}/${base}.xsa
rm -rf ${dest}/memory.map

                cp $bit ${dest}/${base}.pdi
test -f $bin && cp $bin ${dest}/${base}.bin 
test -f $ltx && cp $ltx ${dest}/${base}.ltx
test -f $xsa && cp $xsa ${dest}/${base}.xsa
test -f $map && cp $map ${dest}

