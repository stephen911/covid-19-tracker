import 'package:covid_19/constant.dart';
import 'package:covid_19/widgets/my_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid_19/widgets/counter.dart';
import 'seedetails.dart';
import 'internetobject.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  final controller = ScrollController();
  double offset = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MyHeader(
              image: "assets/icons/coronadr.svg",
              textTop: "Get to know",
              textBottom: "About Covid",
              offset: offset,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Symptoms",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 10),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                            child: SymptomCard(
                              image: "assets/images/headache.png",
                              title: "Headache",
                              isActive: true,
                            ),
                            onTap: () {
                              print("click");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SeeDetails()));
                            }),
                        SymptomCard(
                          image: "assets/images/headache.png",
                          title: "Headache",
                          isActive: true,
                        ),
                        SymptomCard(
                          image: "assets/images/cough.png",
                          title: "Cough",
                        ),
                        SymptomCard(
                          image: "assets/images/sneeze.png",
                          title: "Sneeze",
                        ),
                        SymptomCard(
                          image: "assets/images/fever.png",
                          title: "High Temperature",
                        ),
                        SymptomCard(
                          image: "assets/images/weak.png",
                          title: "Tastelessness",
                        ),
                        SymptomCard(
                          image: "assets/images/caugh.png",
                          title: "Difficulty in breating",
                        ),
                        SymptomCard(
                          image: "assets/images/breathlessness.png",
                          title: "Dry Caugh",
                        ),
                        SymptomCard(
                          image: "assets/images/weak.png",
                          title: "Tiredness",
                        ),
                        SymptomCard(
                          image: "assets/images/sorethroat.png",
                          title: "Sore throat",
                        ),
                        SymptomCard(
                          image: "assets/images/diarrhea.png",
                          title: "Diarrhoea",
                        ),
                        SymptomCard(
                          image: "assets/images/weak.png",
                          title: "Conjucnctives",
                        ),
                        SymptomCard(
                          image: "assets/images/headache.png",
                          title: "headache",
                        ),
                        SymptomCard(
                          image: "assets/images/weak.png",
                          title: "A rash on skin",
                        ),
                        SymptomCard(
                          image: "assets/images/sorethroat.png",
                          title: "Loss of speech",
                        ),
                        SymptomCard(
                          image: "assets/images/weak.png",
                          title: "Loss of movement",
                        ),
                        SymptomCard(
                          image: "assets/images/fever.png",
                          title: "Fever",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text("Prevention", style: kTitleTextstyle),
                  SizedBox(height: 30),
                  PreventCard(
                    text:
                        "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks"
                        "Mask can help prevent the spread of the virus from the person wearing the mask to others. Masks alone do not protect against COVID-19"
                        "and should be combined with physical distancing and hand hygiene. Follow the advice provided by your local Health authority",
                    image: "assets/images/wear_mask.png",
                    title: "Wear face mask",
                  ),
                  // PreventCard(
                  //   text:
                  //       "Maintain a safe distance from anyone who is coughing or sneezing.",
                  //   image: "assets/images/socialdistancing.png",
                  //   title: "Social Distancing",
                  // ),
                  PreventCard(
                    text:
                        "Clean your hands often. Use soap and water, or an alcohol-based hand rub.",
                    image: "assets/images/wash_hands.png",
                    title: "Wash your hands",
                  ),
                  PreventCard(
                    text:
                        "Don't touch your eyes, nose or mouth. Cover your nose and with your bent elbox or a tissue when you cough or sneeze",
                    image: "assets/images/wear_mask.png",
                    title: "Don't Touch vital areas",
                  ),
                  PreventCard(
                    text:
                        "Stay home if you feel unwell. If you have a fver, cought and difficulty breating, seek medical attention",
                    image: "assets/images/wear_mask.png",
                    title: "Stay Home",
                  ),
                  SizedBox(height: 30),
                  Text("Treament", style: kTitleTextstyle),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 30,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(height: 30),
                        Text(
                            "To date, there area no specific vaccines or medicines for COVID-19 Treatments are"
                            " investigation, and will be tested through clinical trials."),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 30,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(height: 30),
                        Text("Self Care", style: kTitleTextstyle1),
                        Text(
                            "If you feel sick you should rest, drink plenty of fluid, and eat nutritious food. Stay in a separate room from other family members, and use a dedicated bathroom if possible. Clean and disinfect frequently touched surfaces. "
                            "Everyone should keep a healthy lifestyle at home. Maintain a healthy diet, sleep, stay active, and make social contact with loved ones through the phone or internet. Children need extra love and attention from adults during difficult times. Keep to regular routines and schedules as much as possible. "
                            "It is normal to feel sad, stressed, or confused during a crisis. Talking to people you trust, such as friends and family, can help. If you feel overwhelmed, talk to a health worker or counsellor."),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 30,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(height: 30),
                        Text("Medical Treatment", style: kTitleTextstyle1),
                        Text(
                            "If you have mild symptoms and are otherwise healthy, self-isolate and contact your medical provider or a COVID-19 information line for advice. "
                            "Seek medical care if you have a fever, a cough, and difficulty breathing. Call in advance."),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const PreventCard({
    Key key,
    this.image,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 130,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      title,
                      style: kTitleTextstyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        text,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/forward.svg"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SymptomCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  const SymptomCard({
    Key key,
    this.image,
    this.title,
    this.isActive = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActive
              ? BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  color: kActiveShadowColor,
                )
              : BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  color: kShadowColor,
                ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Image.asset(image, height: 90),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
