#!/bin/bash
if [ "$CI_GIT_REF" = "main" ]; then
  if [ \"$CI_PLATFORM\" != \"web\" ]; then
    npx trapeze run appflow.yml -y --$CI_PLATFORM
  fi && npx ionic build --prod
else
  if [ \"$CI_PLATFORM\" != \"web\" ]; then
    npx trapeze run appflow.yml -y --$CI_PLATFORM
  fi && npx ionic build
fi
