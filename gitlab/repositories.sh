#!/bin/sh

ROOT_TOKEN="60b6c7ba41475b2ebdded2c0d3b079f0"

cd repositories

cd gitOverHere
git config user.email "root@example.com"
git config user.name "root"
git push http://root:$ROOT_TOKEN@gitlab/gitOverHere_group/gitOverHere.git main
cd ..

cd pipelineInvaders-src
git config user.email "root@example.com"
git config user.name "root"


git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group1/pipelineInvaders1.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group2/pipelineInvaders2.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group3/pipelineInvaders3.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group4/pipelineInvaders4.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group5/pipelineInvaders5.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group6/pipelineInvaders6.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group7/pipelineInvaders7.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group8/pipelineInvaders8.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group9/pipelineInvaders9.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group10/pipelineInvaders10.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group11/pipelineInvaders11.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group12/pipelineInvaders12.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group13/pipelineInvaders13.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group14/pipelineInvaders14.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group15/pipelineInvaders15.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group16/pipelineInvaders16.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group17/pipelineInvaders17.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group18/pipelineInvaders18.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group19/pipelineInvaders19.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group20/pipelineInvaders20.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group21/pipelineInvaders21.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group22/pipelineInvaders22.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group23/pipelineInvaders23.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group24/pipelineInvaders24.git main

git push http://root:$ROOT_TOKEN@gitlab/pipelineInvaders_group25/pipelineInvaders25.git main


cd ..
cd ..