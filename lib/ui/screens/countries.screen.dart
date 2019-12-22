import 'package:countries/providers/countries.provider.dart';
import 'package:countries/ui/screens/widgets/country.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountriesScreen extends StatefulWidget {
  static const routeName = '/';

  @override
  _CountriesScreenState createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  var _provider;
  var _isLoading = false;
  var _isProviderCreated = false;

  @override
  void didChangeDependencies() {
    if (!_isProviderCreated) {
      _provider = Provider.of<CountriesProvider>(context);
      _isProviderCreated = true;
      _loadData();
    }
    super.didChangeDependencies();
  }

  void _loadData() {
    _showLoading();
    _provider.loadCountries().then((_) {
      _hideLoading();
    });
  }

  void _showLoading() {
    setState(() {
      _isLoading = true;
    });
  }

  void _hideLoading() {
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countries'),
      ),
      body: _isLoading ? buildContainerLoading() : buildContainerList(),
    );
  }

  Container buildContainerLoading() => Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );

  Container buildContainerList() => Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(
          itemCount: _provider.countries.length,
          itemBuilder: (ctx, index) =>
              CountryWidget(_provider.countries[index]),
        ),
      );
}
