ovh-dns-get-consumer-key.sh
===========================

This script depends on:
* sh
* cURL

First, export the following environment variable:
* OVH_AK: the OVH application key
* OVH_REDIR: the URL to which the validation URL will redirect to

Then, run the script and you should get the consumer key as well as the
validation URL.
Open the validation URL in your browser to validate that credential.
