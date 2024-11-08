
# IAM User creation with policy attachment

# Terraform
Using Terraform the following actions are created.
IAM User,
IAM Group and
IAM Policy.

##
We are creating 5 IAM users and adding them in a Group called Batch1.



And creating a policy for EC2 full access and attaching the policy to Batch1 group. 
Since the group has policy atttached to it all users in the group will also gain the access.

## GitHub

Initially plan is to create one IAM user using Terraform in visual studio code.  
And then using version control system files are modified and some new files are also created.  

Three branches are created to show the difference.
Branch 1 - Main  
Branch 2 - dev  
Branch 3 - Version-1  

Main branch  
This branch contains files which  are used to create single IAM user only.  

Dev branch  
This branch is the copy of main branch and later it was merged with 3rd branch version-1.  

Version-1 branch  
This branch is created under the Dev branch which has files to create our main goal of creating IAM user and group with policy attached to it.

Main branch
![main br](https://github.com/user-attachments/assets/4b8db5e0-35ad-4c42-9bfe-c549ac467a70)

Version-1 branch
![ver](https://github.com/user-attachments/assets/b199c57b-55a6-490c-a1ff-c25df1891134)
## Step-by-Step

The following screenshots will explain the process of version-1 branch shortly.

    
## 1.main.tf
This file contains the aws configuration and credential settings.

![main tf](https://github.com/user-attachments/assets/1231a961-65d4-4da3-8e93-6f8c1285796c)
## 2.variable.tf
This file contains the users metadata.
![Variables](https://github.com/user-attachments/assets/3890f47a-c90e-40fc-99bc-f2ed3681cd4b)

Output:
![Users](https://github.com/user-attachments/assets/7537a82b-373f-4480-b50a-1c153174cda4)
## 3.Group.tf
This file contains group creation and process to add all user in this group.
![grouptf](https://github.com/user-attachments/assets/5ae16a98-993d-47a1-b80b-353c72904335)

Output:
![Group](https://github.com/user-attachments/assets/579541a0-5cd1-4f0c-94ed-38270c7451ad)

## 4.Group policy.tf
This file contains policy creation using json format and attaching the policy to this group.
![Group policy tf](https://github.com/user-attachments/assets/657981e4-2267-414a-bd67-b49fbec58e6b)

Output:
![group policy](https://github.com/user-attachments/assets/09159ba2-541f-4496-b1a9-5191d1b8babf)
## 1.main.tf
This file contains the aws configuration and credential settings.
