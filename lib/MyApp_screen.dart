import './import_file.dart';

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'CoolME',
      initialRoute: Home.route,
      routes:
      {
        Home.route: (context) => Home(),

      },
    );
  }
}