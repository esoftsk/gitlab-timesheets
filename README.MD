# Documentation

This repository is fork of https://github.com/jiripech/timesheets.

## First Steps

1. Install Gitlab API client gem
2. Configure environment
3. Run `Timesheets.rb >Timesheets.md`

### Environment

These variables should be present in the environment

```
GITLAB_API_PRIVATE_TOKEN="glpat_..."
GITLAB_API_ENDPOINT="https://gitlab.com/api/v4" (or address of your Gitlab instance API)
GITLAB_GROUP="your_group"
OUTFILE="Timesheets.csv" 
FIELD_DELIMITER=";"
MG_API_KEY="mailgun_api_key_..."
MG_DOMAIN="mg.sender.domain"
FROM_ADDRESS="some.sender@your.domain"
TO_ADDRESS="some.recipient@your.domain"
```

## Added functionality

1. Ability to send genereated file to email address using Mailgun service
2. Docker image with cron

## Gitlab API Client

This work is based on [Gitlab API Client][https://github.com/NARKOZ/gitlab] by [Nihad Abbasov](https://github.com/NARKOZ). The Gitlab API v4 unfortunately does not publish raw timesheets, so we had to go through all the notes, extract the times from them and add it up for each author.

### More reading

- https://www.rubydoc.info/gems/gitlab/Gitlab/ClientIssues#time_stats_for_issue-instance_method


[https://github.com/NARKOZ/gitlab]: https://github.com/NARKOZ/gitlab
