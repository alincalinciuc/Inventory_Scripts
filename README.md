#Project Overview
Inventory_Scripts is a git repository to aggregate a number of scripts I've written, with the intent to make it easier to keep track of what's created and/ or running in any one of your (possibly) many AWS accounts... The scripts in this repo will be discussed below.

**_Critical Note_**:  *If your profiles include the "region" within the profile section, these scripts will be limited to looking for resources ONLY WITHIN THAT REGION. There's no quick answer to this problem right now, since all cli commands are inherently regionally focused. Just something to bear in mind when running these scripts.*

## Profile Scripts
- **AllProfiles.sh**
    - This script displays all of your configured profiles, including in both your "credentials" file, as well as the "config" file.
---
## Config-like Discovery Scripts
- **Config-Discovered-Resources.sh**
    - This script displays all resources that have been discovered using the "Config" service within AWS. If you haven't enabled and configured the "Config" service, this won't give you any information.
---
## EC2 Scripts
- **my_instances.sh**
    - This script displays all instances in the specified account (by specifying the profile to run against).
- **all_my_instances.sh**
    - This script displays all instances in all available accounts (by running the "AllProfiles" script and parsing the profiles to run against).
---
## S3 Scripts
    _These scripts are global, and not limited to the inherited region of the profile, like many other scripts._
- **all_my_buckets.sh**
    - This script displays all buckets in all available accounts (by running the "AllProfiles" script and parsing the profiles to run against).
- **all_my_buckets_with_sizes.sh**
    - This script displays all buckets, # of files, and the total size of each bucket in all available accounts (by running the "AllProfiles" script and parsing the profiles to run against).
- **my_buckets.sh**
    - This script displays all buckets in the specific profile.
- **my_buckets_with_sizes.sh**
    - This script displays all buckets, # of files, and the total size of each bucket in the specified profile.
---
## CloudFormation Scripts
- **all_my_stacks.sh**
    - This script displays all CFT Stacks in all available accounts (by running the "AllProfiles" script and parsing the profiles to run against).

## Config Rule Scripts
- **all_my_config_rules.sh**
    - This script displays all Config Rules and their state in all available accounts (by running the "AllProfiles" script and parsing the profiles to run against).

## CloudTrail Scripts
- **all_my_trails.sh**
    - This script displays all CloudTrail trails in all available accounts (by running the "AllProfiles" script and parsing the profiles to run against).
----
## EFS Scripts
- **all_my_filesystems.sh**
    - This script displays all EFS filesystems within an account.
----
## SNS Scripts
- **all_my_topics.sh**
    - This script displays all SNS topics in all available accounts (by running the "AllProfiles" script and parsing the profiles to run against).
---
## Kinesis
- **all_my_streams.sh**
    - This script displays all Kinesis Streams in all available accounts (by running the "AllProfiles" script and parsing the profiles to run against).
---
## Dynamo DB Scripts
- **all_my_DDB_tables.sh**
	- This script displays all Dynamo DB Tables in all available accounts (by running the "AllProfiles" script and parsing the profiles to run against).
---
## RDS DB Scripts
- **all_my_rds.sh**
	- This script displays all RDS databases in all available accounts (by running the "AllProfiles" script and parsing the profiles to run against).
---
## Lambda Scripts
- **all_my_functions.sh**
	- This script displays all Lambda Functions in all available accounts (by running the "AllProfiles" script and parsing the profiles to run against).
---
## IAM Scripts
- **all_my_policies.sh**
 	- This script displays all of the IAM policies you have in all of your accounts.
- **roles_with_policies.sh**
	- This script displays all of the IAM Roles and associated policies you have in your specified account.
- **all_my_IAM_roles.sh**
	- This script displays (in a table format) all of the IAM Roles (Role Name and Role ARN) you have in all of your accounts.
- **all_my_roles_with_policies.sh**
	- This script displays all of the IAM Roles and associated policies you have in all of your accounts.
- **groups_with_policies.sh**
	- This script displays all of the IAM Groups and associated policies you have in your specified account.
- **all_my_groups.sh**
	- This script displays all of the IAM Groups you have in all of your accounts.
- **all_my_groups_with_policies.sh**
	- This script displays all of the IAM Groups and associated policies you have in all of your accounts.
- **users_with_policies.sh**
	- This script displays all of the IAM Users and associated policies you have in your specified account.
- **all_my_users.sh**
	- This script displays all of the IAM Users you have in all of your accounts.
- **all_my_users_with_policies.sh**
	- This script displays all of the IAM Users and associated policies you have in all of your accounts.
---
## Network Scripts
- **all_my_vpcs.sh**
 	- This script displays all of the vpcs you have in all of your accounts. (See important note at the top of this README).
- **all_my_subnets.sh**
 	- This script displays all of the subnets you have in all of your accounts.
- **my_vpcs.sh**
 	- This script displays all of the vpcs you have in the account you specify. (See important note at the top of this README).
---
## Other Scripts
- **menu.sh**
	- This script presents a clean, simple menu to access the other scripts. The other scripts can be used by themselves, or they can be called by this menu. Your choice.
