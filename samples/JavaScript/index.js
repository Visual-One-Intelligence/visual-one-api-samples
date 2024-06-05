// report name
const report = 'periods_for_client_proc'
// your user's client id
const clientId = 0;
const url = `https://visual1intelligence.com/api/v6/report/${report}?client_id=${clientId}&context=storage`;
// your access token
const accessToken = '<your_access_token>';

const options = {
	method: 'GET',
	headers: {
    Authorization: `Bearer ${accessToken}`,
	}
};

try {
	const response = await fetch(url, options);
	const result = await response.json();
	console.log(result);
} catch (error) {
	console.error(error);
}