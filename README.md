# SOCK-SHOP CI-CD WITH TERRAFORM, EKS, AND JENKINS.
#### END TO END DEPLOYMENT OF SOCKS-SHOP APPLICATION TO KUBERNETES USING A JENKINS CI/CD PIPELINE

# Pre-requisite:
1. AWS Account
2. Terraform

Step1:
From the `Jenkins-Server-Setup` folder, run the following commands to create your jenkins server
```sh
    cd terraform-code-create-jenkins
    cd terraform init
    cd terraform plan --out <name>
    cd terraform apply <name>
```

Step2:
Login to the jenkins server, configure the jenkins with the necessary environment and Github account.





