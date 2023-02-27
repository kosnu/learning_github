#!/bin/bash

BODY=${git log production..main --pretty=format:'- %h : %s' --abbrev-commit --merges}
gh pr create --base ${BASE_BRANCH} --title "${PR_TITLE}" --body "${BODY}"
