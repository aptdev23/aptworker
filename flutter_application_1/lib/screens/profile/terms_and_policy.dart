import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/profile/worker_profile.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../components/terms_List.dart';

class trmsAndPolicy extends StatelessWidget {
  const trmsAndPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
        //const Color.fromARGB(255, 2, 7, 61),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => const workerProfile()));
          },
          icon: const Icon(
            color: Colors.black,
            LineAwesomeIcons.angle_left,
          ),
        ),
        title: const Text(
          style: TextStyle(color: Colors.black),
          'Terms and Policy',
          textAlign: TextAlign.start,
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Gide',
                style: TextStyle(
                  fontSize: 18,
                )),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Text(
                'Terms and Policy',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 30),

              //what its apt
              termsList(
                title: 'What is Apt DZ',
                children: [
                  childrenTexts(
                    content:
                        'We have a specific formula for our workers so that they will be a free worker (freelance), meaning that he is not obligated to attend daily if there is no work.',
                  ),
                  childrenTexts(
                    content:
                        "After you've got accepted to work with us, you will deal with our terms that you already signed it when you sent the work form.",
                  ),
                  childrenTexts(
                    content:
                        "You will receive calls from our agents to ensure that you are connected to our team and that you will be connected to the customers to perform the work required by him.",
                  ),
                  childrenTexts(
                    content:
                        "You will be free to accept or reject the work required of you when our agent communicates with you, and that will be under a logical justification such as being working in another place, illness or an emergency, God forbid.  Remember (you cannot refuse all the required work specifying reasons such as the above, otherwise you will be dismissed from our team and stop dealing with us.",
                  ),
                  childrenTexts(
                    content:
                        "Pricing will be by our authorized agent, as you will accept it after discussing it with our agent. ",
                  ),
                  childrenTexts(
                    content:
                        "You can refuse the pricing if it does not fit you, just as our agent can reject your pricing if it does not fit our terms and objectives. ",
                  ),
                ],
              ),

              //How to work with us?
              termsList(
                title: 'How to work with us?',
                children: [
                  childrenTexts(
                    content:
                        'We have a specific formula for our workers so that they will be a free worker (freelance), meaning that he is not obligated to attend daily if there is no work.',
                  ),
                  childrenTexts(
                    content:
                        "After you've got accepted to work with us, you will deal with our terms that you already signed it when you sent the work form.",
                  ),
                  childrenTexts(
                    content:
                        "You will receive calls from our agents to ensure that you are connected to our team and that you will be connected to the customers to perform the work required by him.",
                  ),
                  childrenTexts(
                    content:
                        "You will be free to accept or reject the work required of you when our agent communicates with you, and that will be under a logical justification such as being working in another place, illness or an emergency, God forbid.  Remember (you cannot refuse all the required work specifying reasons such as the above, otherwise you will be dismissed from our team and stop dealing with us.",
                  ),
                  childrenTexts(
                    content:
                        "Pricing will be by our authorized agent, as you will accept it after discussing it with our agent. ",
                  ),
                  childrenTexts(
                    content:
                        "You can refuse the pricing if it does not fit you, just as our agent can reject your pricing if it does not fit our terms and objectives. ",
                  ),
                ],
              ),

              //Insurances
              termsList(
                title: 'Insurances',
                children: [
                  childrenTexts(
                    content:
                        'We have a specific formula for our workers so that they will be a free worker (freelance), meaning that he is not obligated to attend daily if there is no work.',
                  ),
                  childrenTexts(
                    content:
                        "After you've got accepted to work with us, you will deal with our terms that you already signed it when you sent the work form.",
                  ),
                  childrenTexts(
                    content:
                        "You will receive calls from our agents to ensure that you are connected to our team and that you will be connected to the customers to perform the work required by him.",
                  ),
                  childrenTexts(
                    content:
                        "You will be free to accept or reject the work required of you when our agent communicates with you, and that will be under a logical justification such as being working in another place, illness or an emergency, God forbid.  Remember (you cannot refuse all the required work specifying reasons such as the above, otherwise you will be dismissed from our team and stop dealing with us.",
                  ),
                  childrenTexts(
                    content:
                        "Pricing will be by our authorized agent, as you will accept it after discussing it with our agent. ",
                  ),
                  childrenTexts(
                    content:
                        "You can refuse the pricing if it does not fit you, just as our agent can reject your pricing if it does not fit our terms and objectives. ",
                  ),
                ],
              ),

              //files and data
              termsList(
                title: 'files and data',
                children: [
                  childrenTexts(
                    content:
                        'We have a specific formula for our workers so that they will be a free worker (freelance), meaning that he is not obligated to attend daily if there is no work.',
                  ),
                  childrenTexts(
                    content:
                        "After you've got accepted to work with us, you will deal with our terms that you already signed it when you sent the work form.",
                  ),
                  childrenTexts(
                    content:
                        "You will receive calls from our agents to ensure that you are connected to our team and that you will be connected to the customers to perform the work required by him.",
                  ),
                  childrenTexts(
                    content:
                        "You will be free to accept or reject the work required of you when our agent communicates with you, and that will be under a logical justification such as being working in another place, illness or an emergency, God forbid.  Remember (you cannot refuse all the required work specifying reasons such as the above, otherwise you will be dismissed from our team and stop dealing with us.",
                  ),
                  childrenTexts(
                    content:
                        "Pricing will be by our authorized agent, as you will accept it after discussing it with our agent. ",
                  ),
                  childrenTexts(
                    content:
                        "You can refuse the pricing if it does not fit you, just as our agent can reject your pricing if it does not fit our terms and objectives. ",
                  ),
                ],
              ),

              //Place
              termsList(
                title: 'Place',
                children: [
                  childrenTexts(
                    content:
                        'We have a specific formula for our workers so that they will be a free worker (freelance), meaning that he is not obligated to attend daily if there is no work.',
                  ),
                  childrenTexts(
                    content:
                        "After you've got accepted to work with us, you will deal with our terms that you already signed it when you sent the work form.",
                  ),
                  childrenTexts(
                    content:
                        "You will receive calls from our agents to ensure that you are connected to our team and that you will be connected to the customers to perform the work required by him.",
                  ),
                  childrenTexts(
                    content:
                        "You will be free to accept or reject the work required of you when our agent communicates with you, and that will be under a logical justification such as being working in another place, illness or an emergency, God forbid.  Remember (you cannot refuse all the required work specifying reasons such as the above, otherwise you will be dismissed from our team and stop dealing with us.",
                  ),
                  childrenTexts(
                    content:
                        "Pricing will be by our authorized agent, as you will accept it after discussing it with our agent. ",
                  ),
                  childrenTexts(
                    content:
                        "You can refuse the pricing if it does not fit you, just as our agent can reject your pricing if it does not fit our terms and objectives. ",
                  ),
                ],
              ),

              //Discipline
              termsList(
                title: 'Discipline',
                children: [
                  childrenTexts(
                    content:
                        'We have a specific formula for our workers so that they will be a free worker (freelance), meaning that he is not obligated to attend daily if there is no work.',
                  ),
                  childrenTexts(
                    content:
                        "After you've got accepted to work with us, you will deal with our terms that you already signed it when you sent the work form.",
                  ),
                  childrenTexts(
                    content:
                        "You will receive calls from our agents to ensure that you are connected to our team and that you will be connected to the customers to perform the work required by him.",
                  ),
                  childrenTexts(
                    content:
                        "You will be free to accept or reject the work required of you when our agent communicates with you, and that will be under a logical justification such as being working in another place, illness or an emergency, God forbid.  Remember (you cannot refuse all the required work specifying reasons such as the above, otherwise you will be dismissed from our team and stop dealing with us.",
                  ),
                  childrenTexts(
                    content:
                        "Pricing will be by our authorized agent, as you will accept it after discussing it with our agent. ",
                  ),
                  childrenTexts(
                    content:
                        "You can refuse the pricing if it does not fit you, just as our agent can reject your pricing if it does not fit our terms and objectives. ",
                  ),
                ],
              ),

              //Mastery
              termsList(
                title: 'Mastery',
                children: [
                  childrenTexts(
                    content:
                        'We have a specific formula for our workers so that they will be a free worker (freelance), meaning that he is not obligated to attend daily if there is no work.',
                  ),
                  childrenTexts(
                    content:
                        "After you've got accepted to work with us, you will deal with our terms that you already signed it when you sent the work form.",
                  ),
                  childrenTexts(
                    content:
                        "You will receive calls from our agents to ensure that you are connected to our team and that you will be connected to the customers to perform the work required by him.",
                  ),
                  childrenTexts(
                    content:
                        "You will be free to accept or reject the work required of you when our agent communicates with you, and that will be under a logical justification such as being working in another place, illness or an emergency, God forbid.  Remember (you cannot refuse all the required work specifying reasons such as the above, otherwise you will be dismissed from our team and stop dealing with us.",
                  ),
                  childrenTexts(
                    content:
                        "Pricing will be by our authorized agent, as you will accept it after discussing it with our agent. ",
                  ),
                  childrenTexts(
                    content:
                        "You can refuse the pricing if it does not fit you, just as our agent can reject your pricing if it does not fit our terms and objectives. ",
                  ),
                ],
              ),

              //Call in Sick
              termsList(
                title: 'Call in Sick',
                children: [
                  childrenTexts(
                    content:
                        'We have a specific formula for our workers so that they will be a free worker (freelance), meaning that he is not obligated to attend daily if there is no work.',
                  ),
                  childrenTexts(
                    content:
                        "After you've got accepted to work with us, you will deal with our terms that you already signed it when you sent the work form.",
                  ),
                  childrenTexts(
                    content:
                        "You will receive calls from our agents to ensure that you are connected to our team and that you will be connected to the customers to perform the work required by him.",
                  ),
                  childrenTexts(
                    content:
                        "You will be free to accept or reject the work required of you when our agent communicates with you, and that will be under a logical justification such as being working in another place, illness or an emergency, God forbid.  Remember (you cannot refuse all the required work specifying reasons such as the above, otherwise you will be dismissed from our team and stop dealing with us.",
                  ),
                  childrenTexts(
                    content:
                        "Pricing will be by our authorized agent, as you will accept it after discussing it with our agent. ",
                  ),
                  childrenTexts(
                    content:
                        "You can refuse the pricing if it does not fit you, just as our agent can reject your pricing if it does not fit our terms and objectives. ",
                  ),
                ],
              ),

              //Pricing
              termsList(
                title: 'Pricing?',
                children: [
                  childrenTexts(
                    content:
                        'We have a specific formula for our workers so that they will be a free worker (freelance), meaning that he is not obligated to attend daily if there is no work.',
                  ),
                  childrenTexts(
                    content:
                        "After you've got accepted to work with us, you will deal with our terms that you already signed it when you sent the work form.",
                  ),
                  childrenTexts(
                    content:
                        "You will receive calls from our agents to ensure that you are connected to our team and that you will be connected to the customers to perform the work required by him.",
                  ),
                  childrenTexts(
                    content:
                        "You will be free to accept or reject the work required of you when our agent communicates with you, and that will be under a logical justification such as being working in another place, illness or an emergency, God forbid.  Remember (you cannot refuse all the required work specifying reasons such as the above, otherwise you will be dismissed from our team and stop dealing with us.",
                  ),
                  childrenTexts(
                    content:
                        "Pricing will be by our authorized agent, as you will accept it after discussing it with our agent. ",
                  ),
                  childrenTexts(
                    content:
                        "You can refuse the pricing if it does not fit you, just as our agent can reject your pricing if it does not fit our terms and objectives. ",
                  ),
                ],
              ),

              //Reports
              termsList(
                title: 'Reports',
                children: [
                  childrenTexts(
                    content:
                        'We have a specific formula for our workers so that they will be a free worker (freelance), meaning that he is not obligated to attend daily if there is no work.',
                  ),
                  childrenTexts(
                    content:
                        "After you've got accepted to work with us, you will deal with our terms that you already signed it when you sent the work form.",
                  ),
                  childrenTexts(
                    content:
                        "You will receive calls from our agents to ensure that you are connected to our team and that you will be connected to the customers to perform the work required by him.",
                  ),
                  childrenTexts(
                    content:
                        "You will be free to accept or reject the work required of you when our agent communicates with you, and that will be under a logical justification such as being working in another place, illness or an emergency, God forbid.  Remember (you cannot refuse all the required work specifying reasons such as the above, otherwise you will be dismissed from our team and stop dealing with us.",
                  ),
                  childrenTexts(
                    content:
                        "Pricing will be by our authorized agent, as you will accept it after discussing it with our agent. ",
                  ),
                  childrenTexts(
                    content:
                        "You can refuse the pricing if it does not fit you, just as our agent can reject your pricing if it does not fit our terms and objectives. ",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      //Support Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.support_agent),
      ),
    );
  }
}
