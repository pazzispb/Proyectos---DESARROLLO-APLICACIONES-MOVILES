import 'package:flutter/material.dart';
import '../themes/agenda_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layouts'),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.cloud_outlined)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Placeholder(),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('My Birthday',
                      style: AgendaTheme.lightTextTheme.titleLarge),
                  const Divider(),
                  Text(
                      "It's going to be a great birthday. We are going out for dinner at my favorite place, then watch a movie after we go to the gelateria for ice cream and espresso.", style: AgendaTheme.lightTextTheme.bodyLarge,),
                  const Divider(),
                  const Placeholder(), //Widget del clima
                  const Divider(),
                  const Placeholder(), //Widget de los regalos
                  const Divider(),
                  const Placeholder() //Widget de las comidas
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
