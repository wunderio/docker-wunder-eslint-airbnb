Extras
======

Don't allow git commit if js ESLint does not pass
-------------------------------------------------

Install extras/git-commit-msg/commit-msg to your .git/hooks folder and from now on you can commit
only there's no problems with js:

    curl https://raw.githubusercontent.com/wunderio/docker-wunder-eslint-airbnb/master/extras/git-commit-msg/commit-msg --output .git/hooks/commit-msg && chmod +x .git/hooks/commit-msg

You could also add the installation to you composer.json so everybody would have this feature:

    "scripts": {
        "pre-install-cmd": [
            "[ -f .git/hooks/commit-msg ] || curl https://raw.githubusercontent.com/wunderio/docker-wunder-eslint-airbnb/master/extras/git-commit-msg/commit-msg --output .git/hooks/commit-msg && chmod +x .git/hooks/commit-msg"
        ]
    }

To have jQuery support, append '-jquery' to the GitHub url
----------------------------------------------------------

    curl https://raw.githubusercontent.com/wunderio/docker-wunder-eslint-airbnb/master/extras/git-commit-msg/commit-msg-jquery --output .git/hooks/commit-msg && chmod +x .git/hooks/commit-msg

And in composer.json:

    "scripts": {
        "pre-install-cmd": [
            "[ -f .git/hooks/commit-msg ] || curl https://raw.githubusercontent.com/wunderio/docker-wunder-eslint-airbnb/master/extras/git-commit-msg/commit-msg-jquery --output .git/hooks/commit-msg && chmod +x .git/hooks/commit-msg"
        ]
    }
