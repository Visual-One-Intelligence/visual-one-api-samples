using System.Net.Http.Headers;
var client = new HttpClient();
// report name
string report = "periods_for_client_proc";
// your user's client id
string clientId = "0";
string url = "https://visual1intelligence.com/api/v6/report/" + report + "/?client_id=" + clientId + "&context=storage";
// your access token
string accessToken = "<your_access_token>";

var request = new HttpRequestMessage
{
	Method = HttpMethod.Get,
	RequestUri = new Uri(url),
	Headers =
	{
		{ "Authorization", "Bearer key-" + accessToken },
	},
};

using (var response = await client.SendAsync(request))
{
	response.EnsureSuccessStatusCode();
	var body = await response.Content.ReadAsStringAsync();
	Console.WriteLine(body);
}