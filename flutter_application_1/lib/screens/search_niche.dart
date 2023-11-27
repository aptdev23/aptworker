import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/tag_state.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';

class seachNich extends StatefulWidget {
  const seachNich({super.key});

  @override
  State<seachNich> createState() => _seachNichState();
}

class _seachNichState extends State<seachNich> {
  // this is the list of work nich keywords for test only gt from farebase!
  var suggestTags = [
    "bathroom repiar",
    "toilet repiar",
    "wood repiar",
    "bedroom decor",
    "kitchen decore",
    "bathroom decor",
    "livng room decor",
    "painting"
  ];

  final controller = Get.put(tagStateController());
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              //padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.5),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white54,
              ),
              child: TypeAheadField(
                keepSuggestionsOnLoading: false,
                textFieldConfiguration: TextFieldConfiguration(
                  controller: textController,
                  onEditingComplete: () {
                    controller.listTags.add(textController.text);
                    textController.clear();
                  },
                  //autofocus: false,
                  style: DefaultTextStyle.of(context).style.copyWith(
                        fontSize: 16,
                        //fontStyle: FontStyle.italic,
                      ),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Type all king of work you can do!',
                  ),
                ),
                suggestionsCallback: (String pattern) {
                  return suggestTags.where(
                      (e) => e.toLowerCase().contains(pattern.toLowerCase()));
                },
                onSuggestionSelected: (String suggestTags) =>
                    controller.listTags.add(suggestTags),
                itemBuilder: (BuildContext context, String itemData) {
                  return ListTile(
                    leading: const Icon(
                      Icons.tag,
                    ),
                    title: Text(itemData),
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          //show keywords selected
          Expanded(
            child: Obx(() => controller.listTags.isEmpty
                ? const Text('No work niches been selected yet')
                : Wrap(
                    children: controller.listTags
                        .map((element) => Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            child: Chip(
                              backgroundColor: Colors.white38,
                              label: Text(
                                element,
                                style:
                                    const TextStyle(color: Colors.blueAccent),
                              ),
                              deleteIcon: const Icon(Icons.clear),
                              onDeleted: () =>
                                  controller.listTags.remove(element),
                            )))
                        .toList(),
                  )),
          ),
        ],
      ),
    );
  }
}
