# remove npm prefix for current user

declare -r DIRNAME="$(dirname "$BASH_SOURCE")"

source "$DIRNAME/dirs.sh"

npm config delete prefix
echo "Deleted npm prefix."
echo ""
echo "[Listing npm config]"
echo ""
npm config list
