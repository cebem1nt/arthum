
for folder in ./*; do
    [ -d "$folder" ] || continue
    echo "Processing $folder"
    out="$folder/.cover.png"
    
    if [ -e "$out" ]; then
        mv "$out" "$out".old
    fi

    arthum "$folder" "$out" 
done
