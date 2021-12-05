# setup npm prefix for current user

declare -r DIRNAME="$(dirname "$BASH_SOURCE")"

source "$DIRNAME/dirs.sh"

npm config set prefix $npmPackagesDir
echo "Set npm prefix to \"$(realpath "$npmPackagesDir")\""
echo ""
echo "[Listing npm config]"
echo ""
npm config list
