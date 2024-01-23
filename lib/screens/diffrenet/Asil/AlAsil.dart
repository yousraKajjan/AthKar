import 'package:baqa_atera/screens/diffrenet/Asil/cubit/cubit.dart';
import 'package:baqa_atera/screens/diffrenet/Asil/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Asil {
  final Text? body;
  final Text? best;
  int? count;
  Asil({required this.body, required this.best, required this.count});
}

List<Asil> werdAlAsil = [
  Asil(
      body: const Text('أستغفر الله '),
      best: const Text(
          'عن ابن عباس قال: قال رسول الله : ((من أكثر من الاستغفار جعل الله له من كـــل هم فرجا و من كلّ ضيق مخرجاً، ورزقه من حيث لا يحتسب)). أخرجه الترمذي. '),
      count: 100),
  Asil(
      body: const Text(
          'اللَّهُمَّ صل على سيدنا محمد عبدك ورسولك النبي الأمي وعلى آله وصحبه وسلّم. '),
      best: const Text(
          'عن أبي هريرة قال: قال رسول الله صلى الله عليه وسلم: ( مَنْ صلّى عليَّ صلاة صلى الله عليه بما عشراً )). أخرجه مسلم.'),
      count: 100),
  Asil(
      body: const Text(
          'لا إله إلا الله وحده لا شريك له، له الملــك ولــه الحمد وهو على كل شيء قدير. '),
      best: const Text(
          ' عن أبي هريرة أن رسول الله صلى الله عليه وسلم قال: (( من قال: لا إله إلا الله وحده لا شريك له، لـــه الملك'
          ' وله الحمد وهو على كل شيء قدير في اليوم مئة مرّة، كانت له عدل عشر رقاب وكتبت له مئة حسنة، ومحيت عنه مئة سيئة،'
          ' و كانت له حرزاً من الشيطان يومه ذلك حتى يمسي ولم يأتِ أحدٌ بأفضل مما جاء به إلا رجل عمل أكثر منها)) أخرجه الشيخان .'),
      count: 100),
  Asil(
      body: const Text('جزى الله عنا سيدنا محمداً بما هو أهله. '),
      best: const Text(
          'أخرج أبو نعيم عن ابن عباس أن رسول الله صلى الله عليه وسلم قال: '
          '(( مَنْ قال : جزى الله عنا محمداً بما هو أهله، أتعب سبعين ملكاً ألف صباح )).'),
      count: 100),
  Asil(
      body: const Text(' یا رب لك الحمد كما ينبغي لجلال وجهك ولعظيم سلطانك. '),
      best: const Text(
          'عن ابن عمر أن رسول الله هل حدثهم : أنّ عبداً من عباد الله تعالى قال: '
          'يارب لك الحمد ...) فعضلت بالملكين فلم يدريا كيف يكتبانها فصعدا إلى السماء فقالا: يارب إن '
          'عبدك قد قال مقالة لا ندري كيف نكتبها.'
          ' قال الله تعالى ما قال عبدي – وهو أعلم بما قال عبده -'
          'فقالا: يارب إنه قال: ( يارب لك الحمد فقال الله تعالى لهما : ( اكتباها كما قال عبدي حتى يلقاني فأجزيه بما ).'
          ' أخرجه الإمام أحمد و ابن ماجه.'),
      count: 100),
  Asil(
      body: const Text(
          'سبحان الله وبحمده، سبحان الله العظيم، أستغفر الله وأتوب إليه. '),
      best: const Text(
          'عن أبي هريرة الله قال: قال رسول الله : کلمتان خفيفتان على اللسان، ثقيلتان في الميزان حبيبتان إلى الرحمن: (( سبحان الله و بحمده سبحان الله العظيم )). '
          'أخرجه البخاري. '),
      count: 100),
  Asil(
      body: const Text('. يا حي يا قيوم لا إله إلا أنت. '),
      best: const Text(
          'ذكر الشيخ عبد الله سراج الدين رحمه الله تعالى أنها لحياة القلب بالإيمان.'),
      count: 41)
];

class AlAsislScreen extends StatelessWidget {
  AlAsislScreen({super.key});
  bool isLognText = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AsilCubit(),
      child: BlocConsumer<AsilCubit, AsilState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('🌼ورد الأصيل🌼'),
            ),
            body: ListView.separated(
                itemBuilder: (context, index) =>
                    AsilItem(werdAlAsil[index], context),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: werdAlAsil.length),
          );
        },
      ),
    );
  }

  Widget AsilItem(Asil A, context) => Card(
        margin: const EdgeInsets.all(10),
        color: Colors.green[200],
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${A.body!.data}'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  // FlutterToastr.show('${A.best!.data}', context);

                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            backgroundColor: Colors.green[100],
                            elevation: 10,
                            title: Center(
                              child: Text(
                                ' ${A.best!.data}' '🌼🌼🌼',
                                textDirection: TextDirection.rtl,
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Center(
                                  child: Text(
                                    'تم',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 0, 115, 209),
                                    ),
                                  ),
                                ),
                              )
                            ]);
                      });
                },
                child: const Text(
                  '🌼' 'أقرأ عن الفضائل' '🌼',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FloatingActionButton(
                      backgroundColor: Colors.green[300],
                      isExtended: true,
                      //focusColor: Colors.amber,
                      child: const Icon(
                        Icons.thumb_up,
                        // color: Colors.white,
                      ),
                      onPressed: () {
                        AsilCubit.get(context).changeSubmit(A, context);
                      },
                    ),
                  ),
                  MaterialButton(
                    color: Colors.green[300],
                    onPressed: () {
                      AsilCubit.get(context).changeSubmit(A, context);
                    },
                    child: Text(
                      '${A.count}',
                      style: const TextStyle(fontSize: 20),
                      // style: const TextStyle(
                      // color: Color.fromARGB(255, 218, 242, 4),),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
}
