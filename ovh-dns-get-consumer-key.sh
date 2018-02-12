#!/usr/bin/env sh

main()
{
	if ! which curl > /dev/null 2>&1; then
		echo "curl is not installed, Bye!"
	fi

	if [ -z $OVH_AK ]; then
		echo "OVH_AK is not exported, Bye!"
		return;
	fi

	if [ -z $OVH_REDIR ]; then
		echo "OVH_REDIR is not exported,  Bye!"
		return;
	fi


	curl -XPOST -H"X-Ovh-Application: $OVH_AK" -H "Content-type: application/json"  https://eu.api.ovh.com/1.0/auth/credential  -d '{
	"accessRules": [
	{
		"method": "GET",
		"path": "/domain/zone/*"
	},
	{
		"method": "POST",
		"path": "/domain/zone/*"
	},
	{
		"method": "PUT",
		"path": "/domain/zone/*"
	},
	{
		"method": "DELETE",
		"path": "/domain/zone/*"
	}
	],
	"redirection":"'$OVH_REDIR'"
	}'

	echo
}

main
