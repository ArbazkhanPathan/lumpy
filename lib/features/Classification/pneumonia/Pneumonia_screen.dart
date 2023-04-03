import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intro_example/core/cubit/cubit.dart';
import 'package:intro_example/core/cubit/states.dart';
import 'package:intro_example/features/Classification/detection_lab.dart';
import 'package:intro_example/features/custom%20widgets/open_close_Text_box.dart';
import 'last_rsult_pneumonia.dart';

class PneumoniaScreen extends StatelessWidget {

  const PneumoniaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AppCubit,AppState>(
      listener: ( context, state) { },
      builder: ( context,  state) {
        AppCubit cubit = AppCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_rounded , size: 30, color: Colors.black,),
            ),
            title: const Text(
              'Lumpy detection',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                fontFamily: 'seguisb',
                color: Color(0xff03045E),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 8
            ),
            child: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Overview',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'seguisb',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      'Lumpy disease, also known as bovine epitheliosis or Knopvelsiekte, is a viral disease that affects cattle, particularly in Africa. The disease is caused by the lumpy skin disease virus, which is transmitted by biting insects such as mosquitoes and ticks. The virus causes nodules or lumps to form on the skin of the infected animal, which can lead to discomfort, secondary infections, and reduced productivity. In severe cases, the disease can lead to death. There is currently no specific treatment for lumpy disease, and prevention strategies focus on controlling insect populations and vaccinating susceptible animals.',
                      style: TextStyle(
                        fontSize: 19,
                        fontFamily: 'seguisb',
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        OpenCloseTextBox(
                          text: '- Development of nodules or lumps on the skin \n- Pain and discomfort associated with the nodules \n- Lethargy and loss of weight \n- Fever \n- Loss of appetite \n- Decreased milk production \n- Neurological symptoms such as seizures or paralysis in severe cases.',
                          title: 'Symptoms',
                          clr: Colors.blue,
                          txtclr: Colors.white,
                        ),
                        OpenCloseTextBox(
                          text: 'Lumpy disease in cows is caused by the lumpy skin disease virus (LSDV), which is a member of the Capripoxvirus family.\n- biting insects such as mosquitoes and ticks\n- Direct contact with infected animals or contaminated objects can also spread the virus\n- tress factors such as transport, overcrowding, and malnutrition can weaken the cows immune system, making it more susceptible to the virus\n The disease is most commonly found in Africa and the Middle East, where the insect vectors are present and cattle populations are high',
                          title: 'Causes',
                          clr: Colors.transparent,
                          txtclr: Colors.grey,
                        ),
                        OpenCloseTextBox(
                          text:'- Cattle living in areas with a high prevalence of lumpy disease are at an increased risk of infection\n- Insect vectors such as mosquitoes and ticks can increase the risk of transmission, particularly during the rainy season\n- Cattle that are stressed or have weakened immune systems are more susceptible to infection and may be at a higher risk of developing severe symptoms\n- Overcrowding, poor nutrition, and inadequate husbandry practices can also increase the risk of lumpy disease.',
                          title: 'Risk factors',
                          clr: Colors.red,
                          txtclr: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      endIndent: 15,
                      thickness: 2,
                      color: Color(0xff03045E),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const Text(
                          'Medical Corner provides Lumpy',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        const Text(
                          'detection with accuracy up to 91%.',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Result(
                                          lottieAnimationName:'pneumonia',
                                          numResults: 1,
                                          threshold: 0.2,
                                          imageMean: 0.0,
                                          imageStd: 180.0,
                                        ) ,
                                      ),
                                    );
                                    cubit.clearImage();
                                    cubit.loadModel();
                                  },
                                  child: Container(
                                    height: 125,
                                    width: 125,
                                    color: Colors.blue,
                                    child:  const Icon(
                                      Icons.image_search_outlined,
                                      color: Colors.white,
                                      size: 80,
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Lumpy',
                                  style: TextStyle(
                                      color: Color(0xff004EC4),
                                      fontSize: 20
                                  ),
                                ),
                                const Text(
                                  'Detection',
                                  style: TextStyle(
                                      color: Color(0xff004EC4),
                                      fontSize: 20
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 125,
                                  width: 125,
                                  color: Colors.blue,
                                  child: IconButton(
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => lastresult() ,
                                        ),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.list,
                                      color: Colors.white,
                                      size: 80,
                                    ),
                                  ),
                                ),
                                const Text(
                                  'Last  Result',
                                  style: TextStyle(
                                      color: Color(0xff004EC4),
                                      fontSize: 20
                                  ),
                                ),
                                const Text(
                                  '      ',
                                  style: TextStyle(
                                      color: Color(0xff004EC4),
                                      fontSize: 20
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(
                      endIndent: 15,
                      thickness: 2,
                      color: Color(0xff03045E),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Preventation',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'seguisb',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    const Text(
                      'To help prevent Lumpy:\n- Get vaccinated\n- use of insecticides\n- maintaining clean and hygienic conditions\n- quarantine measures can help prevent the introduction of the disease to new areas',
                      style: TextStyle(
                        fontSize: 19,
                        fontFamily: 'seguisb',
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}