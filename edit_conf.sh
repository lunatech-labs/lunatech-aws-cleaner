#!/bin/bash

sed -E "s/ACCOUNT_ID/$TRAINING_ID/g" config/default.yaml
