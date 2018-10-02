# terraform-scaffold
Simple aim of creating a Terraform scaffold repo for the base of your projects.

### Structure

bin/
    tf.sh (*performs orchestration of runs)
terraform/
    bootstrap/
        *.tf (bootstrap tf files, setup environment etc)
    components/
        # shared components - default variables, backend config etc etc
    environments/
        dev/
            # environment code - perhaps main.tf etc
        prod/
    modules/
        example/
        # where all modules would be developed
    templates/
        # dir for all templates
