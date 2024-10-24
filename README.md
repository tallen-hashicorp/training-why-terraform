# Training - Why Terraform?

Terraform is an Infrastructure as Code (IaC) tool that enables you to define, deploy, and manage infrastructure using declarative configuration files. It’s a powerful tool that automates the provisioning of infrastructure resources such as virtual machines, databases, networking, and more across various cloud providers.

## Command Line Basics
Terraform uses subcommands to interact with infrastructure. Below is a list of commonly used commands:

- `terraform version`: Check the version of Terraform installed.
- `terraform -help`: Display general help or help for a specific subcommand.
- `terraform fmt`: Format Terraform configuration files to canonical style.
- `terraform validate`: Validate the syntax of your Terraform configuration files.
- `terraform console`: Open an interactive console for testing Terraform expressions.
- `terraform init`: Initialize Terraform, download providers, and prepare your environment.
- `terraform plan`: Show the execution plan of changes to your infrastructure.
- `terraform apply`: Apply the changes defined in your configuration to the infrastructure.
- `terraform destroy`: Destroy the managed infrastructure.

---

## Detailed Commands Overview

### Terraform Help
To get help on any subcommand or even general Terraform usage, use the `-help` option. It’s a great way to learn more about specific commands.

```bash
terraform -help
```

If you need help with a specific subcommand, for example, `terraform apply`:

```bash
terraform apply -help
```

---

### Terraform Format (`terraform fmt`)
Terraform includes a built-in formatter to keep your configuration files clean and readable. Running this command ensures all your code is properly formatted and follows Terraform's style guide.

```bash
terraform fmt
```

Running `fmt` is especially useful for enforcing consistency in indentation, spacing, and alignment, making your code easier to read and maintain.

---

### Terraform Validate (`terraform validate`)
This command checks the syntax and structure of your configuration files, ensuring that they are correct. It does not make any changes to your infrastructure, but it’s a quick way to catch errors before running `apply`.

```bash
terraform validate
```

**Pro tip**: Use this command as part of your CI/CD pipeline to ensure code quality before deploying infrastructure changes.

---

### Terraform Console (`terraform console`)
The Terraform console provides an interactive environment to evaluate expressions and inspect state without having to run actual infrastructure changes. This is useful for testing and troubleshooting your Terraform code.

```bash
terraform console
```

For example, you can experiment with Terraform functions like splitting strings:

```bash
$: split(".", split("//", var.console_example)[1])[1]
```

The console evaluates and returns the result, helping you understand how expressions work before using them in your configuration files.

---

### Terraform Init (`terraform init`)
`init` is one of the most important commands in Terraform. It downloads any necessary provider plugins (like AWS, GCP, Azure) and sets up your working directory to manage infrastructure. It must be run before any other commands like `plan` or `apply`.

```bash
terraform init
```

After running this command, you will see the `.terraform` directory in your working folder, which contains all necessary provider information.

---

### Terraform Plan (`terraform plan`)
Running `terraform plan` helps you preview what changes Terraform will apply to your infrastructure without actually executing them. It shows a detailed summary of the changes, additions, or deletions to be made.

```bash
terraform plan
```

**Pro tip**: Always run `plan` before `apply` to avoid unexpected changes to your infrastructure.

---

### Terraform Apply (`terraform apply`)
Once you are satisfied with the `plan`, you can apply the changes using `terraform apply`. This will execute the changes defined in your configuration and update your cloud infrastructure accordingly.

```bash
terraform apply
```

Terraform will prompt you to confirm before applying the changes. You can also use the `-auto-approve` flag to skip the approval prompt (use with caution).

```bash
terraform apply -auto-approve
```

---

### Terraform Destroy (`terraform destroy`)
When you no longer need the infrastructure, use `terraform destroy` to clean it up. This command destroys all the resources defined in your Terraform configuration.

```bash
terraform destroy
```

Just like `apply`, it will prompt you for confirmation. Use the `-auto-approve` flag if you want to skip this prompt.

```bash
terraform destroy -auto-approve
```

**Warning**: Be careful with this command, as it will remove all your managed infrastructure.

---

## Best Practices
- **Version Control**: Always keep your Terraform configurations in version control (e.g., Git). This allows you to track changes and collaborate effectively.
- **Remote State**: Use a remote backend (e.g., AWS S3, Azure Blob) to store your Terraform state file, especially when working in a team. This prevents issues with concurrent changes.
- **State Locking**: Ensure your backend supports state locking to avoid race conditions when multiple people apply changes at the same time.

With these commands, you'll be well-equipped to start managing infrastructure with Terraform. Happy coding!
