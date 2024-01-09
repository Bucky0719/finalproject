#!/bin/bash


if [[ $GIT_BRANCH == "origin/dev" ]]; then
    ./build.sh
    docker login -u bucky0838 -p dckr_pat_79C2h7PDN21tTnkWp-4-xSNlHIg
    docker tag reactjs-demo_reactjs-image bucky0838/dev
    docker push bucky0838/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    ./build.sh
    docker login -u bucky0838 -p dckr_pat_79C2h7PDN21tTnkWp-4-xSNlHIg
    docker tag reactjs-demo_reactjs-image bucky0838/prod
    docker push bucky0838/prod

else
    echo "Deploy Error. Image not pushed."
fi
