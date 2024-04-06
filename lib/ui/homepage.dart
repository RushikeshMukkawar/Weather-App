import 'package:flutter/material.dart';
import 'package:weather_app/widgets/constants.dart';

class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>
{
  final TextEditingController _cityController = TextEditingController();
  final Constants _constants = Constants();       

  static String API_KEY = '209b8423178a4cfd8d165544241803';
  String location = 'Mumbai';
  String weatherIcon = 'heavycloudy.png';
  int temperature = 0;
  int humidity = 0;
  int windSpeed = 0;
  int cloud = 0;
  String currentDate = '';
  String currentWeatherStatus = '';

  List hourlyWeatherForecast = [];
  List dailyWeatherForecast = [];

  //api call
  String searchWeatherAPI = "http://api.weatherapi.com/v1/current.json?key=" + API_KEY + "&days=7&q=";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
      ),
    );
  }
}