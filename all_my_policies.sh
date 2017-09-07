#!/usr/local/Cellar/bash/4.4.12/bin/bash

declare -a AllProfiles

AllProfiles=( $(egrep '\[.*\]' ~/.aws/credentials | tr -d '[]\r') )

NumofProfiles=${#AllProfiles[@]}
echo "Found ${NumofProfiles} profiles in credentials file"
echo "Outputting all policies from all profiles"

printf "%-15s %-65s %-15s \n" "Profile" "Policy Name" "Times Attached"
printf "%-15s %-65s %-15s \n" "-------" "-----------" "--------------"
# Cycles through each profile
for profile in ${AllProfiles[@]}; do
	# Cycles through each role within the profile
	# This will output each policy associated with the specific role
	aws iam list-policies --profile $profile --output text --query 'Policies[?AttachmentCount!=`0`].[PolicyName,AttachmentCount]' | awk -F $"\t" -v var=${profile} '{printf "%-15s %-65s %-15s \n",var,$1,$2}' | sort -rg -k 3
	echo "----------------"
done

echo
exit 0