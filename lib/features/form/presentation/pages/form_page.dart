import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Name',
                ),
                autocorrect: false,
                onChanged: (value){}, 
                validator: (_){},
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Surname',
                ),
                autocorrect: false,
                onChanged: (value){}, 
                validator: (_){},
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Phone number',
                ),
                autocorrect: false,
                onChanged: (value){}, 
                validator: (_){},
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value){}, 
                validator: (_){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
