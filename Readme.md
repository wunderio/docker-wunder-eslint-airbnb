ESLint ES6 Airbnb configuration
===============================

## Bash

docker run --rm -t -i --volume $(pwd)/:/app/:cached hkirsman/wunder-eslint-airbnb your-file.js

## Creating bash alias


If you want to be able to run ESLint as if it was installed on your host locally, you can define the following function in your ~/.bashrc, ~/.zshrc or similar. Also do "source ~/.bashrc" or "source ~/.zshrc" or reload the terminal.

### Linux/Mac

    eslint () {
        docker run \
            --rm \
            -t \
            -i \
            --volume $(pwd)/:/app/:cached \
            hkirsman/wunder-eslint-airbnb $@
    }

### Example usage

Check current folder.

    eslint .
