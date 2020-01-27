# terraform-playground
This is a repo for experimenting with terraform

## Using environment variables in Terraform

You can set environment variables in the cli to pass to terraform. For example, if you want to override an environment variable, you can set the environment variable is the CLI using TF_VAR_{varname}={some-value}. For example, if you wanted set `var.ec2_name` using the CLI, you would export the value in like this:

```sh
export TF_VAR_ec2_name=tf-test
```

This should override the default value of the `ec2_name` variable in variables.tf to "tf-test"
