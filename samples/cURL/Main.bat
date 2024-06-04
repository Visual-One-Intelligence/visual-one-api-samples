:: report name
set REPORT="periods_for_client_proc"
:: your user's client id
set CLIENTID="0"
set URL="https://visual1intelligence.com/api/v6/report/%REPORT%?client_id=%CLIENTID%&context=storage"
:: your access token
set ACCESSTOKEN="<your_access_token>"

curl --request GET \
	--url %URL% \
	--header 'Authorization: key-%ACCESSTOKEN%'