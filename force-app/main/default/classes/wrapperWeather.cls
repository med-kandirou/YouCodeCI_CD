public class wrapperWeather{
	public cls_coord coord;
	public cls_weather[] weather;
	public String base;	//stations
	public cls_main main;
	public Integer visibility;	//10000
	public cls_wind wind;
	public cls_clouds clouds;
	public Integer dt;	//1683300012
	public cls_sys sys;
	public Integer timezone;	//3600
	public Integer id;	//2548885
	public String name;	//Fes
	public Integer cod;	//200
	public class cls_coord {
		public Double lon;	//-4.9998
		public Double lat;	//34.0372
	}
    
	public class cls_weather {
		public Integer id;	//800
		public String main;	//Clear
		public String description;	//clear sky
		public String icon;	//01d
	}
	public class cls_main {
		public Double temp;	//28.14
		public Double feels_like;	//27.3
		public Double temp_min;	//28.14
		public Double temp_max;	//28.14
		public Integer pressure;	//1016
		public Integer humidity;	//32
	}
	class cls_wind {
		public Double speed;	//3.6
		public Integer deg;	//340
	}
	class cls_clouds {
		public Integer all;	//0
	}
	class cls_sys {
		public Integer type;	//1
		public Integer id;	//2390
		public String country;	//MA
		public Integer sunrise;	//1683264434
		public Integer sunset;	//1683313567
	}
	public static wrapperWeather parse(String json){
		return (wrapperWeather) System.JSON.deserialize(json, wrapperWeather.class);
	}
}