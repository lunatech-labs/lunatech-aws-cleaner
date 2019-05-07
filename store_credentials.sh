#!/bin/bash

mkdir ~/.aws
echo "[default]
aws_access_key_id = $ACCESS_KEY
aws_secret_access_key = $SECRET_ACCESS_KEY" > ~/.aws/credentials
