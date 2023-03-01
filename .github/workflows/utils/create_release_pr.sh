#!/bin/bash

BODY=${git log main..${BASE_BRANCH} --pretty=format:'- %h : %s' --abbrev-commit --merges}
gh pr create --base ${BASE_BRANCH} --title "${PR_TITLE}" --body "${BODY}"
