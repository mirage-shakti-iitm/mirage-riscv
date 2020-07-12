option=$1
chosen_dir="compartment_allocations/strategy_${option}"
src_dir1="lib-ocaml"
src_dir2="lib-c"
dest_dir1="lib"
dest_dir2="lib/bindings"

cp ${chosen_dir}/${src_dir1}/* ${dest_dir1}/
cp ${chosen_dir}/${src_dir2}/* ${dest_dir2}/
