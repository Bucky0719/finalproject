#!/bin/bash

if [[ $GIT_BRANCH == "orgin/dev" ]];
then
     ./build.sh     
     docker login -u bucky0838 -p dckr_pat_79C2h7PDN21tTnkWp-4-xSNlHIg
     docker tag reactjs-demo_reactjs-image_1 bucky0838/dev
     docker push bucky0838/dev 

else [[ $GIT_BRANCH == "orgin/main" ]];
then
      ./build.sh 
      docker login -u bucky0838 -p dckr_pat_79C2h7PDN21tTnkWp-4-xSNlHIg
      docker tag reactjs-demo_reactjs-image_1 bucky0838/prod
      docker push bucky0838/prod
fi
