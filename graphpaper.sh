#! /bin/bash
# Usage: graphpaper projectname django|boilerplate

PROJECT_NAME=$1
PROJECT_TYPE=$2

${PROJECT_TYPE="boilerplate"}

compass create $PROJECT_NAME -r graphpaper --using graphpaper/$PROJECT_TYPE --sass-dir=media/sass \
--css-dir=media/stylesheets --javascripts-dir=media/javascript \
--image-dir=media/images -x sass