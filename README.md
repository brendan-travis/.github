# .github

Dot GitHub is a repository for managing the state of my
GitHub estate. It uses Terraform to define the GitHub
resources and track their state through local state files.

## Running the Terraform scripts

```
terraform init
```

Start by initialising the Terraform environment.

```
terraform apply
```

Then, run the `apply` command to allow Terraform to check
the current state of the environment, and you will be
presented with any changes that need to be applied to
bring the environment back in line.
