# Github

GitHub is a repository for managing the state of my
GitHub estate. It uses Terraform to define the GitHub
resources and track their state through local state files.

## Authentication
The GitHub provider requires a PAT set to connect and
manage the GitHub account. This is done by setting the
`GITHUB_TOKEN` environment variable.

```
export GITHUB_TOKEN="..."
```

## Running the Terraform scripts

```
terraform init
```
Start by initialising the Terraform environment.

```
sh ./import.sh
```
Since the state is managed via local state, you will
first need to run the `./import.sh` utility script
to import all the necessary resources.

```
terraform apply
```
Then, run the `apply` command to allow Terraform to check
the current state of the environment, and you will be
presented with any changes that need to be applied to
bring the environment back in line.

## Useful commands

```
terraform validate
```
Validate the terraform files to make sure they are valid
before applying them.

```
terraform fmt -list=false -recursive
```
Format the HCL files and apply a consistent style.
