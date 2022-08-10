import 'package:flutter/material.dart';
import 'package:prixs_flutter_test/core/value_validators/value_validators.dart';
import 'package:prixs_flutter_test/shared/utils/time_utils.dart';

enum Genere { man, woman }

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  Genere genere = Genere.man;
  final _dateController = TextEditingController(); //fecha marcado inicial
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Name',
                  ),
                  autocorrect: false,
                  onChanged: (value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Surname',
                  ),
                  autocorrect: false,
                  onChanged: (value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone_android),
                    labelText: 'Phone number',
                  ),
                  autocorrect: false,
                  onChanged: (value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some number';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    labelText: 'Email',
                  ),
                  autocorrect: false,
                  onChanged: (value) {},
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return emailValidation(value);
                  },
                ),
                const SizedBox(height: 15),
                TextFormField(
                  enableInteractiveSelection: false,
                  controller: _dateController,
                  enabled: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.calendar_today),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
                    hintText: 'Date of Birth',
                  ),
                  onTap: () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    final dateTime = await TimeUtils.selectDate(context);
                    if (dateTime != null) {
                      _dateController.text = '${dateTime.year.toString()}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.day.toString().padLeft(2, '0')}';
                    }
                    setState(() {});
                  },
                  validator: (value) => (value!.isEmpty) ? 'Seleccione una fecha' : null,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text('Male'),
                        leading: Radio<Genere>(
                          fillColor: MaterialStateColor.resolveWith((states) => Colors.green),
                          focusColor: MaterialStateColor.resolveWith((states) => Colors.green),
                          value: Genere.man,
                          groupValue: genere,
                          onChanged: (Genere? value) {
                            setState(() {
                              genere = value!;
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text('Woman'),
                        leading: Radio<Genere>(
                          fillColor: MaterialStateColor.resolveWith((states) => Colors.green),
                          value: Genere.woman,
                          groupValue: genere,
                          onChanged: (Genere? value) {
                            setState(() {
                              genere = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                MaterialButton(
                  color: Colors.green,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      final snackBar = SnackBar(
                        content: const Text('Thanks for submitting!'),
                        action: SnackBarAction(
                          label: 'Success',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      final snackBar = SnackBar(
                        content: const Text('Please fix the errors in the form.'),
                        action: SnackBarAction(
                          label: 'Error',
                          onPressed: () {
                            // Some code to undo the change.
                          },
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
