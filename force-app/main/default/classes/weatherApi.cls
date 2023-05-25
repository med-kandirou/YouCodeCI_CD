public class weatherApi {
	public static double getWeatherbyCity(String city) {
        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
		req.setEndpoint('https://api.openweathermap.org/data/2.5/weather?q='+city+'&units=metric&APPID=dfcc0e4bb43abcf7f9fab93773f9b47d');
        HttpResponse res = h.send(req);
        wrapperWeather conv = wrapperWeather.parse(res.getBody());
		return conv.main.temp;
    }
}