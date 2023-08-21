import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ChatLearn(),
  ));
}

class ChatLearn extends StatefulWidget {
  const ChatLearn({Key? key}) : super(key: key);

  @override
  State<ChatLearn> createState() => _ChatLearnState();
}

class _ChatLearnState extends State<ChatLearn> {

  // List<Message> msg =[
  //   Message(message: 'Ocar Wilde1'),
  //   Message(message: 'Ocar Wilde2'),
  //   Message(message: 'Ocar Wilde3'),
  //   Message(message: 'Ocar Wilde4'),
  //   Message(message: 'Ocar Wilde1'),
  //   Message(message: 'Ocar Wilde2'),
  //   Message(message: 'Ocar Wilde3'),
  //   Message(message: 'Ocar Wilde4'),
  //   Message(message: 'Ocar Wilde1'),
  //   Message(message: 'Ocar Wilde2'),
  //   Message(message: 'Ocar Wilde3'),
  //   Message(message: 'Ocar Wilde4'),
  // ];
  // List<Message> msg =[
  //  'fdsaf',
  // ];
  List<String> msgString = ['sdf','Oscar2','Oscar3','Oscar4',];
    // 'Oscar5','Oscar6','Oscar9','sdf','Oscar2','Oscar3','Oscar4',
    //'Oscar5','Oscar6','Oscar9'];

  TextEditingController messageController = TextEditingController();
  //TextEditingController personController = TextEditingController();

  String personButton = "Sim1";
  bool isPersonChanged = true;

   static const  rightDirection = "TextDirection.rtl";
   String leftDirection = "TextDirection.ltr";


  /*doSomething() {
    setState(() {
      msgString.add("addition");
      //print("hi 888");
    });

  }*/

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        //backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Esther"),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,
        ),
        body: Container(

          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/chat3.jpg"),
              fit: BoxFit.fill,
            ),
          ),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height-200,
                    decoration: BoxDecoration(
                    ),
                    child: ListView.builder(
                        itemCount: msgString.length,
                        itemBuilder:(BuildContext context, int index)
                        {
                         //print("hi  $index $index is ${msgString[index].toString()}");
                          return Container(
                            child: Card(
                              margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: [
                                    Text(

                                        msgString[index],
                                       textDirection: isPersonChanged == true ? TextDirection.ltr: TextDirection.rtl,
                                 // isPersonChanged == true ? personButton = "Sim1" : personButton = "Sim2";
                                       //textDirection: rightDirection,
                                       // textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 18,
                                        )
                                    ),

                                  ],
                                ),
                              ),
                            ),
                          );
                        }
                    ) ,
                  ),
                ),
                Container(
                  child:Align(
                        //alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: TextField(
                                controller: messageController,
                                decoration: InputDecoration(hintText: "Enter your message"),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: ElevatedButton(
                                onPressed: (){
                                  isPersonChanged = !isPersonChanged;
                                  setState(() {
                                    isPersonChanged == true ? personButton = "Sim1" : personButton = "Sim2";
                                  });
                                },
                                child: Text(
                                  personButton,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: ElevatedButton(
                                onPressed: (){
                                  setState(() {
                                    msgString.add(messageController.text);
                                    messageController.clear();
                                    FocusManager.instance.primaryFocus?.unfocus();
                                    //print("hi 888");
                                  });
                                },
                                child: Text(
                                  "Send",
                                  style: TextStyle(
                                    color: Colors.white,

                                    //backgroundColor: Colors.white,
                                  ),
                                ),
                                //style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,foregroundColor: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),


                ),



              ],
            ),
        ),
      ),
    );
  }

  // doSomething() {
  //   msgString.add("addition");
  //   print("hi 888");
  // }
}

// Widget buildImage