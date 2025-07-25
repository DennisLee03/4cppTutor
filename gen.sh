if [ -d "$1" ]; then
    echo "✅ Directory '$1' exists." 
    exit 0
else 
    cp -r template "$1"
    echo "✅ Directory '$1' built."
    exit 0
fi