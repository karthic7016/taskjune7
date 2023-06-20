#!/bin/bash


# Send a request to guvi.in and get the HTTP status code
http_code=$(curl -s -o /dev/null -w "%{http_code}" https://guvi.in)


# Check if the HTTP status code is 2xx or 3xx, which indicates success
if [[ "$http_code" =~ ^[2-3][0-9][0-9]$ ]]; then
	  echo "Request to guvi.in succeeded with HTTP status code $http_code"
  else
	    echo "Request to guvi.in failed with HTTP status code $http_code"
fi

