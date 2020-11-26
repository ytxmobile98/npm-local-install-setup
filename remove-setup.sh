# remove npm prefix for current user

source dirs.sh

npm config delete prefix
echo "Deleted npm prefix."
echo ""
echo "[Listing npm config]"
echo ""
npm config list
