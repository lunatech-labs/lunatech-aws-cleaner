# LunatechLabs AWS Cleaner
It cleans the AWS account every night around 3AM!

based on the [AWS Nuke](https://github.com/rebuy-de/aws-nuke) tool from Rebuy-de, but implemented with a jenkins file so you can run it nightly!

## Usage:

### If you don't have a specific resource to save:
Nothing to do! Just leave your resource untouched and it will be gone during the night

### If you need to save your resource: 
You will need to add your resource to the configuration file in the __config__/ folder

Most of the time, you will only have to add the type of your resource and the name of it under the filter section as follows:
```yaml
  filters:
      TypeOfResource:
        - "name of the resource"
      TypeOfResource:
        - "name of the resource"
```
But in certain case, you might want to save multiple resources at once, such as all your S3Objects, in which case you can use wildcards:
```yaml
filters:
      TypeOfResource:
        - type: glob
          value: "*partial name of resource*"
```


For an extended amount of information, please refer to the official tool's [README](https://github.com/rebuy-de/aws-nuke/blob/master/README.md#filtering-resources)
