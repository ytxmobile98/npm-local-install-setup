# setup npm prefix for current user

source dirs.sh

npm config set prefix $npmPackagesDir
echo "Set npm prefix to \"$(realpath "$npmPackagesDir")\""
echo ""
echo "[Listing npm config]"
echo ""
npm config list
