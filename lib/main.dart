import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

var widgets = [
  ListTileWidgets(
      image: Image.asset('assets/flags/flag_of_canada.png'),
      country: 'Canada',
      continent: 'North America',
      language: 'English'),
  ListTileWidgets(
      image: Image.asset('assets/flags/flag_of_china.png'),
      country: 'China',
      continent: 'Asia',
      language: 'Mandarin Chinese'),
  ListTileWidgets(
      image: Image.asset('assets/flags/flag_of_france.png'),
      country: 'France',
      continent: 'Europe',
      language: 'English'),
  ListTileWidgets(
      image: Image.asset('assets/flags/Flag_of_Germany.png'),
      country: 'Germany',
      continent: 'Europe',
      language: 'German/Deutsch'),
  ListTileWidgets(
    image: Image.asset('assets/flags/flag_of_japan.png'),
    country: 'Japan',
    continent: 'Asia',
    language: 'Japanese/Nihongo(日本語)',
  ),
  ListTileWidgets(
    image: Image.asset('assets/flags/flag_of_Pakistan.png'),
    country: 'Pakistan',
    continent: 'Asia',
    language: 'Urdu/English',
  ),
  ListTileWidgets(
    image: Image.asset('assets/flags/flag_of_Russia.png'),
    country: 'Russia',
    continent: 'Asia/Europe',
    language: 'Russian/Russkiy(русский)',
  ),
  ListTileWidgets(
    image: Image.asset('assets/flags/Flag_of_South_Korea.png'),
    country: 'South Korea',
    continent: 'Asia',
    language: 'Korean/Hangugeo" (한국어)',
  ),
  ListTileWidgets(
    image: Image.asset('assets/flags/flag_of_Turkey.png'),
    country: 'Turkey',
    continent: 'Europe/Asia',
    language: 'Turkish',
  ),
  ListTileWidgets(
    image: Image.asset('assets/flags/flag_of_USA.png'),
    country: 'United States of America',
    continent: 'North America',
    language: 'English',
  ),
];

class ListTileWidgets extends StatelessWidget {
  const ListTileWidgets(
      {super.key,
      required this.image,
      required this.country,
      required this.continent,
      required this.language});

  final Image image;
  final String country;
  final String continent;
  final String language;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          Container(width: 100, height: 100, color: Colors.red, child: image),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Country: $country',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Continent: $continent',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Language: $language',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple List View'),
      ),
      body: Column(
        children: [
          Text(
            'List of Countries in the World',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Colors.red[800],
            ),
          ),
          Image.asset('assets/images/worldcountries.png'),
          Column(
            verticalDirection: VerticalDirection.up,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 400,
                child: ListView.separated(
                  itemCount: widgets.length,
                  itemBuilder: (context, index) {
                    return widgets[index];
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Colors.black,
                      thickness: 1,
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
