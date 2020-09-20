import '../import_file.dart';

class Home extends StatelessWidget
{
  static String route = 'Home';

  String result = 'null';

  void _ndefWrite()
  {
    FlutterNfcReader.write("path_prefix","tag content").then((response) {
      result = response.content;
      print(response.content);
      print('nfc write');
    });
  }

  void _tagRead()
  {
    FlutterNfcReader.read().then((response) {
      result = response.content;
      print(response.content);
      print('nfc read');
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text('NfcManager Plugin Example')),
    body: SafeArea(
      child: Column(
        children: [
          RaisedButton(child: Text('Ndef Write'), onPressed: _ndefWrite),
          RaisedButton(child: Text('Tag Read'), onPressed: _tagRead),
          Text(
            'The result: ',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          Text(
            result,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    ),
    );
  }
}
