import requests

# report name
report = 'periods_for_client_proc'
# your user's client id
client_id = '0'
url = f"https://visual1intelligence.com/api/v6/report/{report}?client_id={client_id}&context=storage"
# your access token
access_token = '<your_access_token>'

headers = {
    'Authorization': f"Bearer key-{access_token}"
}

response = requests.get(url, headers=headers)

print(response.json())
