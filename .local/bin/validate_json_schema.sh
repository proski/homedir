#! /bin/sh

# Validate JSON document against schema using AJV
#
# This script is written to support Ubuntu 18.04, so it doesn't follow the best
# practices. Run "sudo apt install npm" to install npm and node.js environment.
# Ignore error "UNMET PEER DEPENDENCY ts-node@>=9.0.0"
#
# Usage: validate_json_schema.sh schema document

if test "$#" != 2; then
    echo "Usage: validate_json_schema.sh schema document"
    exit 2
fi

for module in ajv ajv-cli ajv-formats; do
    test -d "node_modules/$module" || npm install "$module"
done

exec node_modules/.bin/ajv -s "$1" -d "$2" -c ajv-formats
