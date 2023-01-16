import 'package:api_flutter/models/main_result.dart';
import 'package:flutter/material.dart';

class Films extends StatelessWidget {
  const Films({super.key, required this.result});

  final List<MainResult> result;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: result.length,
            separatorBuilder: (_, __) => const Divider(),
            shrinkWrap: true,
            //scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final data = result[index];
              return Padding(
                padding: const EdgeInsets.all(50.0),
                child: SizedBox(
                  height: 700,
                  child: Center(
                    child: Column(children: [
                      //data.main_image!;
                      Image.network(
                          'https://www.europa-cinemas.org/storage/ecdbimages/film/FP-541-vesper-2022-i-m.jpg'),
                      Text(
                        data.name.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: data.trailers!.length,
                          itemBuilder: (BuildContext context, int index) =>
                              Row(children: [
                            //data.trailers![index].url;
                            Image.network(
                                'https://i.ytimg.com/vi/AfskcMk-E74/maxresdefault.jpg'),
                            Text(
                              data.trailers![index].name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                        child: Text("Kateqoriya:"),
                      ),
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: data.categories!.length,
                          itemBuilder: (BuildContext context, int index) =>
                              Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              data.categories![index].name!,
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      const Text('Yaş həddi:'),
                      Text(data.age.toString()),
                    ]),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
