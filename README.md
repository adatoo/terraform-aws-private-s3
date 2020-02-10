# Private S3 Bucket

This module creates a Private S3 Bucket.


## Usage

```terraform
module "<your_resource_name>" {
    source      = "<PATH TO MODULE>"
    bucket_name = "test-bucket"
    ... 
    <OTHER OPTIONAL ARGUMENTS>
}
```

## Input Variables

| Name                    | Description                                      | Type   | Default   | Required |
|-------------------------|--------------------------------------------------|--------|-----------|----------|
| bucket_name             | The name of the bucket. This needs to be unique. | string | -         | yes      |
| tags                    | Tags to apply to the S3 bucket resource          | map    | empty map | no       |
| block_public_acls       | Block public access for new ACLs                 | bool   | false     | no       |
| block_public_policy     | Block public access for new bucket policies      | bool   | false     | no       |
| ignore_public_acls      | Block public access for any ACLs                 | bool   | false     | no       |
| restrict_public_buckets | Block public access for any bucket policies      | bool   | false     | no       |

## Outputs

| Name                        | Description                                           |
|-----------------------------|-------------------------------------------------------|
| bucket_id                   | Bucket Name (aka ID)                                  |
| bucket_arn                  | Bucket ARN. Format: `arn:aws:s3:::bucketname`         |
| bucket_domain_name          | FQDN of bucket. Format: `bucketname.s3.amazonaws.com` |
| bucket_regional_domain_name | The bucket region-specific domain name                |
