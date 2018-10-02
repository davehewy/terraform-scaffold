# terraform-scaffold
Simple aim of creating a Terraform scaffold repo for the base of your projects.

### Structure

```
|____README.md
|____bin
| |____tf.sh (*performs orchestration of runs)
|____.gitignore
|____terraform
| |____environments
| | |____dev (*environment code - perhaps main.tf etc)
| | | |____backend.tf
| | | |____README.md
| | | |____outputs.tf
| | | |____main.tf
| | | |____variables.tf
| | |____prod
| | | |____README.md
| | | |____outputs.tf
| | | |____main.tf
| | | |____variables.tf
| |____templates (*dir for all templates)
| |____modules (*modules would be developed)
| | |____example
| | | |____README.md
| | | |____main.tf
| |____bootstrap (*bootstrap tf files, setup environment etc)
| | |____.terraform-version
| | |____s3_state_bucket.tf
| | |____provider_aws.tf
| | |____variables.tf
| |____components (*shared components - default variables, backend config etc) etc
| | |____backend.tf
```