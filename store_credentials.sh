#!/bin/bash

mkdir ~/.aws
echo "[default]
aws_access_key_id = $ACCESS
aws_secret_access_key = $SECRET_ACCESS" > ~/.aws/credentials
