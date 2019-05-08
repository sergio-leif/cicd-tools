#!/bin/bash

# Token to access to Jira
ACCESS_TOKEN=$1
# Issue key
ISSUE_KEY=$2
JIRA_URL=$3
# Number to register time into the issue (hours). For example: 3
TIME_REGISTER=$

curl --request POST \
  --url "${JIRA_URL}/rest/api/3/issue/${ISSUE_KEY}/worklog" \
  --header "Authorization: Basic ${ACCESS_TOKEN}" \
  --header "Accept: application/json" \
  --header "Content-Type: application/json" \
  --data "{
  \"timeSpent\": ${TIME_REGISTER}h,
  \"visibility\": {
    \"type\": \"group\",
    \"value\": \"jira-developers\"
  }
}"
