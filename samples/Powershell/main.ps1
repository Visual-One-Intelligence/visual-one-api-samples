# report name
$report = "periods_for_clients_proc"
# your user's client id
$clientId = "0"
$url = "https://visual1intelligence.com/api/v6/report/$report/?client_id=$clientId&context=storage"
# your access token
$accessToken = "<your_access_token>"

$headers=@{}
$headers.Add("Authorization", "Bearer $accessToken")
$response = Invoke-WebRequest -Uri $url -Method GET -Headers $headers