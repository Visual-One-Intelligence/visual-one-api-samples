// report name
String report = "periods_for_client_proc";
// your user's client id
String clientId = '0';
String url = "https://visual1intelligence.com/api/v6/report/" + report + "/?client_id=" + clientId + "&context=storage";
// your access token
String accessToken = "<your_access_token>"

HttpRequest request = HttpRequest.newBuilder()
		.uri(URI.create(url))
		.header("Authorization", "Bearer " + accessToken)
		.method("GET", HttpRequest.BodyPublishers.noBody())
		.build();
HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
System.out.println(response.body());