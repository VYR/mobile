import 'package:raoproject/models/user.dart';
import 'package:flutter/material.dart';
import 'package:raoproject/utils/dio_client.dart';

class FetchUser extends StatefulWidget {
  const FetchUser({super.key});

  @override
  State<FetchUser> createState() => _FetchUserState();
}

class _FetchUserState extends State<FetchUser> {
  final TextEditingController _idController = TextEditingController();

  bool _isFetching = false;
  bool _isDeleting = false;

  @override
  Widget build(BuildContext context) {
    final DioClient dioClient = DioClient(context);
    return Container(
      color: Colors.blue.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: _idController,
                decoration: const InputDecoration(hintText: 'Enter ID'),
              ),
            ),
            const SizedBox(width: 16.0),
            _isFetching
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        _isFetching = true;
                      });

                      User? user = await dioClient.getUser(
                        id: _idController.text,
                      );

                      if (user == null) {
                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.network('user.data.avatar'),
                                    const Text('ID: '),
                                    const Text(
                                      'Name: error',
                                    ),
                                    const Text('Email: ghjgfg'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }

                      setState(() {
                        _isFetching = false;
                      });
                    },
                    child: const Text('Fetch'),
                  ),
            const SizedBox(width: 16.0),
            _isDeleting
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        _isDeleting = true;
                      });
                      await dioClient.deleteUser(id: _idController.text);
                      final snackBar = SnackBar(
                        content: Text(
                          'User at id ${_idController.text} deleted!',
                          style: const TextStyle(fontSize: 20.0),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);

                      setState(() {
                        _isDeleting = false;
                      });
                    },
                    child: const Text('Delete'),
                  ),
          ],
        ),
      ),
    );
  }
}
