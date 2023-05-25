clear

until read -r -p "Your Commit SHA: " commitSHA && test "$commitSHA" != ""; do
  continue
done


echo "Deploy commit $commitSHA to UAT."
echo "Modified Files : "
git diff-tree --no-commit-id --name-only -r "$commitSHA"
echo "+++++++++++++"
files=$(git diff-tree --no-commit-id --name-only --diff-filter=AM -r $commitSHA | tr '\n' ',' | sed 's/,$//')
echo "$files"

sfdx force:source:deploy -p "$files" -u "org 2"
