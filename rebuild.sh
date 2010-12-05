#!/bin/bash
#
# This script is based on Open Atrium's rebuild script.
#
# To use this command you must have `drush make`, `cvs` and `git` installed.
#

if [ -f crmdev.make ]; then
  echo -e "\nThis command can be used to run crmdev.make in place, or to generate"
  echo -e "a complete distribution of the CRM Dev profile.\n\nWhich would you like?"
  echo "  [1] Rebuild CRM Dev profile in place."
  echo "  [2] Build a full CRM Dev distribution"
  echo -e "Selection: \c"
  read SELECTION

  if [ $SELECTION = "1" ]; then

    # Run crmdev.make only.
    echo "Building CRM Dev install profile..."
    drush make --working-copy --no-core --contrib-destination=. crmdev.make --yes

  elif [ $SELECTION = "2" ]; then

    # Generate a complete tar.gz of Drupal + CRM Dev
    echo "Building CRM Dev distribution..."

MAKE=$(cat <<EOF
core = "6.x"\n
api = 2\n
projects[drupal][version] = "6.19"\n
projects[crmdev][type] = "profile"\n
projects[crmdev][download][type] = "git"\n
projects[crmdev][download][url] = "http://github.com/shomeya/crmdev.git"\n
EOF
)
    VERSION=`date +%Y%m%d%H%M%S`
    MAKE="$MAKE $TAG\n"
    NAME=`echo "crmdev-$VERSION" | tr '[:upper:]' '[:lower:]'`
    echo -e $MAKE | drush make --yes --tar - $NAME
  else
   echo "Invalid selection."
  fi
else
  echo 'Could not locate file "crmdev.make"'
fi
