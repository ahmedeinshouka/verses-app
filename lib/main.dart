import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: firstapplication(),
    );
  }
}

class firstapplication extends StatefulWidget {
  const firstapplication({super.key});

  @override
  State<firstapplication> createState() => _firstapplicationState();
}

class _firstapplicationState extends State<firstapplication> {
  int   myIndex=0;
  List maps = [
    {
      "line1": "آية المنافق ثلاث إذا حدَّث كذّب، وإذا وعد أخلف،",
      "line2": "وإذا ائتمن خان"
    },
    {
      "line1": "اتقوا الظلم فإنه ظلمات يوم القيامة",
      "line2": "واتقوا الشحَّ فإنه أهلك من كان قبلكم"
    },
    {
      "line1": "البِرُّ حسن الخلق والإثم ما حاك في صدرك",
      "line2": " وكرهت أن يطلع عليه الناس"
    },
    {
      "line1": "أحب الأعمال إلى الله",
      "line2": "أدومها وإن قلّ"
    },{
      "line1": "أحب الناس إلى الله تعالى يوم القيامة وأدناهم منه مجلسا، إمام عادل",
      "line2": "وأبغض الناس إلى الله يوم القيامة وأبعدهم منه مجلسا، إمام جائر"
    },{
      "line1": "إذا استأذنت أحدَكم امرأتهُ إلى المسجد فلا يمنعها",
      "line2": " "
    },{
      "line1": "إذا أُمَّ أحدكم الناس، فليخفف، فإن فيهم الصغير والكبير والضعيف والمريض",
      "line2": "وذا الحاجة، وإذا صلى لنفسه فليطوّل ما شاء"
    },{
      "line1": "إذا حكم الحاكم فاجتهد ثم أصاب، فله أجران",
      "line2": "وإذا حكم فاجتهد ثم أخطأ فله أجر"
    },{
      "line1": "إذا رأى أحدكم جنازة، فإن لم يكن ماشيا معها",
      "line2": "فليقم حتى يخلفها أو تخلفه أو توضع من قبل أن تخلفه"
    },{
      "line1": ":"" إذا مات ابن آدم، انقطع عنه عمله إلا من ثلاث",
      "line2": " صدقة جارية، أو علم ينتفع به، أو ولد صالح يدعو له"
    },{
      "line1": "الله تعالى حرم عليكم عقوق الأمهات، ووأد البنات""إن",
      "line2": " ومنعا وهات، وكره لكم قيلا وقال، وكثرة السؤال وإضاعة المال"
    },{
      "line1": "إن الله تعالى قد حرم على النار من قال لا إله إلا الله يبتغي بذلك وجه الله",
      "line2": ""
    },{
      "line1": "إن الدعاء هو العبادة",
      "line2": " "
    },{
      "line1": "إن الدين يُسر ولن يُشَادَّ الدين أحد إلا غلبه، فسددوا وقاربوا وأبشروا",
      "line2": " واستعينوا بالغَدْوة والرّوحة وشيء من الدُّلْجة"
    },{
      "line1": " شر الناس عند الله منزلة يوم القيامة""إن",
      "line2": "لرجل يفضي إلى امرأته وتفضي إليه ثم ينشر سرها"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Text(
              maps[myIndex]["line1"],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              maps[myIndex]["line2"],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      if (myIndex == maps.length - 1) {
                        myIndex = 0;
                      } else {
                        myIndex++;
                      }
                    });
                  },
                  icon: Icon(
                    Icons.navigate_before_rounded,
                    size: 40,
                    color: Colors.amber,
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black)),
                ),
                SizedBox(
                  width: 40,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                      if (myIndex == 0) {
                        myIndex = maps.length - 1;
                      } else {
                        myIndex--;
                      }
                      });
                    },
                    icon: Icon(
                      Icons.navigate_next_rounded,
                      size: 40,
                      color: Colors.amber,
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.black))),
              ],
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
