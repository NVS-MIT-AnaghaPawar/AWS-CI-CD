# AWS-CI-CD

### Setting Up AWS Infrastructure for Ticket Management System

Follow these steps to set up the AWS infrastructure for the Ticket Management System:

1. **Create RDS Instance:**
   - Create an RDS instance with the required specifications.
   - Obtain the RDS endpoint and ensure it's accessible from your application code.
   - Example code snippet:

     ```java
     String rdsEndpoint = "your_rds_endpoint_here";
     // Use the RDS endpoint in your application code
     ```

2. **Set Up CodeCommit Repository:**
   - Create a CodeCommit repository for version control of your application code.
   - Initialize Git in your project directory, add your files, commit them, and push to the CodeCommit repository.
   - Example commands:

     ```bash
     git init
     git add .
     git commit -m "Initial Commit"
     git remote add origin https://git-codecommit.ap-south-1.amazonaws.com/v1/repos/my-app
     git push origin master
     ```

3. **Create S3 Bucket and CodeBuild Project:**
   - Create an S3 bucket to store build artifacts.
   - Set up a CodeBuild project to automate build processes.
   
4. **Create IAM Role for EC2 Instance:**
   - Create an IAM role with permissions for EC2, CodeBuild, CodeDeploy, S3, and any other required services.
   - Attach the IAM role to the EC2 instance.
   - Example user data script for EC2 instance setup:

     ```bash
     #!/bin/bash
     yum update -y
     yum install java-17-amazon-corretto-devel -y
     yum install -y ruby
     cd /home/ec2-user
     wget https://aws-codedeploy-ap-southeast-1.s3.amazonaws.com/latest/install
     chmod +x ./install
     ./install auto
     systemctl start codedeploy-agent
     systemctl enable codedeploy-agent
     yum install -y httpd
     systemctl start httpd
     systemctl enable httpd
     ```

5. **Create Application and Deployment Group in CodeDeploy:**
   - Create an application and deployment group in CodeDeploy.
   - Configure the deployment settings according to your requirements.

6. **Set Up CodePipeline:**
   - Create a CodePipeline to automate the release process.
   - Define the source (CodeCommit), build (CodeBuild), and deployment (CodeDeploy) stages.

7. **Configure RDS Connection in Application:**
   - Update your application code to connect to the RDS database using the RDS endpoint, hostname, username, and password.
   - Example connection details:

     ```java
     String rdsHostname = "your_rds_hostname_here";
     String rdsUsername = "your_rds_username_here";
     String rdsPassword = "your_rds_password_here";
     ```

8. **Initialize Database and Schema:**
   - Connect to the RDS database using the provided credentials.
   - Create the necessary database and tables for the Ticket Management System.
   - Example SQL commands:

     ```sql
     USE tms;
     CREATE TABLE registertable (
         fullname VARCHAR(50),
         username VARCHAR(50),
         email VARCHAR(50),
         phoneno VARCHAR(50),
         password VARCHAR(50)
     );
     INSERT INTO registertable VALUES ('a', 'a', 'a', 'a', 'a');
     ```

Follow these steps to set up your Ticket Management System on AWS. Ensure all configurations and settings are correctly applied for seamless operation.
