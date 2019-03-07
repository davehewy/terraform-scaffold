# Terraform Scaffold (terraform-scaffold)

Simple Terraform scaffold repo for the base of your projects.

- [Overview](#overview)
- [Usage](#usage)
- [Bootstrap](#bootstrap)
- [Plan](#plan)
- [Structure](#structure)
- [To-do](#todo)

<a name="overview"></a>
### Overview

Un-opinionated lightweight scaffolding of a basic terraform repo. Deliberately lightweight (& for the time being un-finished).

Yes there is a considerable amount more I could be doing with tf.sh & I may well add to that over the coming months. Most projects will not require additional complexity.

<a name="usage"></a>
### Usage

<a name="bootstrap"></a>
##### Bootstrap

You can get setup using an s3 bucket as backend for terraform simply with the following. Be sure to check the variables.tf defaults and override them if you like.

```
cd terraform/bootstrap
terraform init
terraform plan -out tfplan.out
terraform apply "tfplan.out"
```

<a name="plan"></a>
##### Plan

dev plan >
```

##### Author info
David Heward
cd bin/
./tf.sh plan dev eu-west-1
```

prod plan >
```
cd bin/
./tf.sh plan prod eu-west-1
```

<a name="structure"></a>
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

<a name="todo"></a>
### To do

- Add better examples in environments
- Show how components can be shared to the environment workspaces
- Allow for variables to be passed to the final terraform cmd from the bin/tf.sh wrapper
- Improve the bin/tf.sh wrapper
    - nice args
    - var passing to underlying cmd
    - pre-flight checks
    - input validation

### Author info
David Heward
