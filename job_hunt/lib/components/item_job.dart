import 'package:flutter/material.dart';

class ItemJob extends StatelessWidget {
  const ItemJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, bottom: 20.0, top: 20.0),
      child: Container(
        decoration: _boxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _companyLogo(),
                _favIcon(),
              ],
            ),
            _infoJobText(context),
          ]),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(context) {
    return BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: const <BoxShadow>[
        BoxShadow(
            color: Colors.black45, offset: Offset(4.0, 4.0), blurRadius: 10.0),
      ],
    );
  }

  Widget _companyLogo() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(
          'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1000&fit=clip',
          width: 60.0,
        ),
      ),
    );
  }

  Widget _favIcon() {
    return const Icon(
      Icons.favorite_border,
      color: Colors.white,
    );
  }

  Widget _infoJobText(context) {
    return Column(
      children: <Widget>[
        Text(
          'Google .',
          style: TextStyle(
            fontSize: 15.0,
            color: Color(0XFFB7B7D2),
          ),
        ),
        Text(
          'Data Enginner',
          style: Theme.of(context).textTheme.headline3,
        ),
      ],
    );
  }
}
