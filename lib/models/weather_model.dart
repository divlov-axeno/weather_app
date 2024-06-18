

class Weather {
  Weather({
    required this.coord,
    required this.weather,
    required this.base,
    required this.main,
    required this.visibility,
    required this.wind,
    required this.rain,
    required this.clouds,
    required this.dt,
    required this.sys,
    required this.timezone,
    required this.id,
    required this.name,
    required this.cod,
  });

  final Coord? coord;
  final List<WeatherElement> weather;
  final String? base;
  final Main? main;
  final int? visibility;
  final Wind? wind;
  final Rain? rain;
  final Clouds? clouds;
  final int? dt;
  final Sys? sys;
  final int? timezone;
  final int? id;
  final String? name;
  final int? cod;

  Weather copyWith({
    Coord? coord,
    List<WeatherElement>? weather,
    String? base,
    Main? main,
    int? visibility,
    Wind? wind,
    Rain? rain,
    Clouds? clouds,
    int? dt,
    Sys? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) {
    return Weather(
      coord: coord ?? this.coord,
      weather: weather ?? this.weather,
      base: base ?? this.base,
      main: main ?? this.main,
      visibility: visibility ?? this.visibility,
      wind: wind ?? this.wind,
      rain: rain ?? this.rain,
      clouds: clouds ?? this.clouds,
      dt: dt ?? this.dt,
      sys: sys ?? this.sys,
      timezone: timezone ?? this.timezone,
      id: id ?? this.id,
      name: name ?? this.name,
      cod: cod ?? this.cod,
    );
  }

  factory Weather.fromJson(Map<String, dynamic> json){
    return Weather(
      coord: json["coord"] == null ? null : Coord.fromJson(json["coord"]),
      weather: json["weather"] == null ? [] : List<WeatherElement>.from(json["weather"]!.map((x) => WeatherElement.fromJson(x))),
      base: json["base"],
      main: json["main"] == null ? null : Main.fromJson(json["main"]),
      visibility: json["visibility"],
      wind: json["wind"] == null ? null : Wind.fromJson(json["wind"]),
      rain: json["rain"] == null ? null : Rain.fromJson(json["rain"]),
      clouds: json["clouds"] == null ? null : Clouds.fromJson(json["clouds"]),
      dt: json["dt"],
      sys: json["sys"] == null ? null : Sys.fromJson(json["sys"]),
      timezone: json["timezone"],
      id: json["id"],
      name: json["name"],
      cod: json["cod"],
    );
  }

}

class Clouds {
  Clouds({
    required this.all,
  });

  final int? all;

  Clouds copyWith({
    int? all,
  }) {
    return Clouds(
      all: all ?? this.all,
    );
  }

  factory Clouds.fromJson(Map<String, dynamic> json){
    return Clouds(
      all: json["all"],
    );
  }

}

class Coord {
  Coord({
    required this.lon,
    required this.lat,
  });

  final double? lon;
  final double? lat;

  Coord copyWith({
    double? lon,
    double? lat,
  }) {
    return Coord(
      lon: lon ?? this.lon,
      lat: lat ?? this.lat,
    );
  }

  factory Coord.fromJson(Map<String, dynamic> json){
    return Coord(
      lon: json["lon"],
      lat: json["lat"],
    );
  }

}

class Main {
  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });

  final double? temp;
  final double? feelsLike;
  final double? tempMin;
  final double? tempMax;
  final int? pressure;
  final int? humidity;
  final int? seaLevel;
  final int? grndLevel;

  Main copyWith({
    double? temp,
    double? feelsLike,
    double? tempMin,
    double? tempMax,
    int? pressure,
    int? humidity,
    int? seaLevel,
    int? grndLevel,
  }) {
    return Main(
      temp: temp ?? this.temp,
      feelsLike: feelsLike ?? this.feelsLike,
      tempMin: tempMin ?? this.tempMin,
      tempMax: tempMax ?? this.tempMax,
      pressure: pressure ?? this.pressure,
      humidity: humidity ?? this.humidity,
      seaLevel: seaLevel ?? this.seaLevel,
      grndLevel: grndLevel ?? this.grndLevel,
    );
  }

  factory Main.fromJson(Map<String, dynamic> json){
    return Main(
      temp: json["temp"],
      feelsLike: json["feels_like"],
      tempMin: json["temp_min"],
      tempMax: json["temp_max"],
      pressure: json["pressure"],
      humidity: json["humidity"],
      seaLevel: json["sea_level"],
      grndLevel: json["grnd_level"],
    );
  }

}

class Rain {
  Rain({
    required this.the1H,
  });

  final double? the1H;

  Rain copyWith({
    double? the1H,
  }) {
    return Rain(
      the1H: the1H ?? this.the1H,
    );
  }

  factory Rain.fromJson(Map<String, dynamic> json){
    return Rain(
      the1H: json["1h"],
    );
  }

}

class Sys {
  Sys({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });

  final int? type;
  final int? id;
  final String? country;
  final int? sunrise;
  final int? sunset;

  Sys copyWith({
    int? type,
    int? id,
    String? country,
    int? sunrise,
    int? sunset,
  }) {
    return Sys(
      type: type ?? this.type,
      id: id ?? this.id,
      country: country ?? this.country,
      sunrise: sunrise ?? this.sunrise,
      sunset: sunset ?? this.sunset,
    );
  }

  factory Sys.fromJson(Map<String, dynamic> json){
    return Sys(
      type: json["type"],
      id: json["id"],
      country: json["country"],
      sunrise: json["sunrise"],
      sunset: json["sunset"],
    );
  }

}

class WeatherElement {
  WeatherElement({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });

  final int? id;
  final String? main;
  final String? description;
  final String? icon;

  WeatherElement copyWith({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) {
    return WeatherElement(
      id: id ?? this.id,
      main: main ?? this.main,
      description: description ?? this.description,
      icon: icon ?? this.icon,
    );
  }

  factory WeatherElement.fromJson(Map<String, dynamic> json){
    return WeatherElement(
      id: json["id"],
      main: json["main"],
      description: json["description"],
      icon: json["icon"],
    );
  }

}

class Wind {
  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });

  final num? speed;
  final int? deg;
  final double? gust;

  Wind copyWith({
    num? speed,
    int? deg,
    double? gust,
  }) {
    return Wind(
      speed: speed ?? this.speed,
      deg: deg ?? this.deg,
      gust: gust ?? this.gust,
    );
  }

  factory Wind.fromJson(Map<String, dynamic> json){
    return Wind(
      speed: json["speed"],
      deg: json["deg"],
      gust: json["gust"],
    );
  }

}
