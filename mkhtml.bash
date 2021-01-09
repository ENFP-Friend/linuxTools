#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

if [[ -f index.html ]] ; then
  echo "index.html already exists. Aborting."
  exit 20
fi

cat > index.html <<_EOF_
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link rel="stylesheet" href="stylesheet/style.css">
</head>
<body>

</body>
</html>
_EOF_

mkdir stylesheet
touch stylesheet/style.css
