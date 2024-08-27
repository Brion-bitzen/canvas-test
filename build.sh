#!/bin/bash
if [ "$CI_GIT_REF" = "main" ]; then
    npx ionic build --prod
else
    npx ionic build
fi
