import 'package:flutter/material.dart';

class Ayat {
  final Text? title;
  final Text? body;
  final Text? best;
  int? count;
  Ayat({
    required this.title,
    required this.body,
    required this.best,
    required this.count,
  });
}

List<Ayat> aya = [
  Ayat(
      title: const Text('بسم الله الرحمن الرحيم'),
      body: const Text(
          'المَ * ذَلِكَ الْكِتَبُ رَيْبَ فِيهِ هُدًى لِلْمُتَّقِينَ * الَّذِينَ يُؤْمِنُونَ بِالْغَيْبِ وَيُقِيمُونَ الصَّلَوَةَ وَمَما رَزَقْنَاهُمْ يُنفِقُونَ * وَالَّذِينَ يُؤْمِنُونَ بِمَا أُنزِلَ إِلَيْكَ وَمَا أُنزِلَ مِن قَبْلِكَ وَبِالْآخِرَةِ هُمْ يُوقِنُونَ * أُوْلَيكَ عَلَى هُدًى مِن رَّبِّهِمْ وَأُوْلَيكَ هُمُ الْمُفْلِحُونَ. '
          '\n'
          '\n'
          'اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ لَهُ مَا فِي السَّمَوَاتِ وَمَا فِي الْأَرْضِ مَن ذَا الَّذِي يَشْفَعُ'
          ' عندَهُ إِلَّا بِإِذْنِهِ يَعْلَمُ مَابَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلَا يُحِيطُونَ بِشَيْءٍ مِنْ عِلْمِهِ إِلَّا بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَوَاتِ وَالْأَرْضَ وَلَا يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ *  . '),
      best: null,
      count: 1),
  Ayat(
      title: null,
      body: const Text(
          ' لَا إِكْرَاهَ فِي الدِّينِ قَد تَّبَيَّنَ الرُّشْدُ مِنَ الْغَيِّ فَمَن يَكْفُرْ بِالطَّاغُوتِ وَيُؤْمِنُ بِاللَّهِ فَقَدِ اسْتَمْسَكَ بِالْعُرْوَةِ الْوُثْقَى'
          'لا انفِصَامَ لَهَا وَاللَّهُ سَمِيعٌ عَلِيمُ * اللَّهُ وَلِيُّ الَّذِينَ ءَامَنُوا يُخْرِجُهُم مِّنَ الظُّلُمَاتِ إِلَى النُّورِ وَالَّذِينَ كَفَرُوا أَوْلِيَاؤُهُمُ الطَّاغُوتُ يُخْرِجُونَهُم مِّنَ النُّورِ إِلَى الظُّلُمَاتِ'
          'أُولَيكَ أَصْحَبُ النَّارِ هُمْ فِيهَا خَلِدُونَ *'),
      best: null,
      count: 10),
  Ayat(
      title: null,
      body: const Text(
          'لِلَّهِ مَا فِي السَّمَوَاتِ وَمَا فِي الْأَرْضِ وَإِن تُبْدُوا مَا فِي أَنفُسِكُمْ أَوْ تُخْفُوهُ يُحَاسِبْكُم بِهِ اللهُ فَيَغْفِرُ لِمَن يَشَاءُ وَيُعَذِّبُ مَن يَشَاءُ'
          ' وَاللَّهُ عَلَى كُلِّ شَيْءٍ قَدِيرٌ * ءَامَنَ الرَّسُولُ بِمَا أُنزِلَ إِلَيْهِ مِن رَّبِّهِ، وَالْمُؤْمِنُونَ كُلٌّ ءَامَنَ بِاللَّهِ وَمَلَنيكَيْهِ، وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِن رُسُلِهِ وَقَالُواْ'
          ' سَمِعْنَا وَأَطَعْنَا غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ *لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ '
          'رَبَّنَا لَا تُؤَاخِذْنَا إِن نَّسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِن قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ ۖ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنتَ مَوْلَنَا فَانصُرْنَا عَلَى الْقَوْمِ الْكَفِرِينَ * سورة البقرة: .'),
      best: const Text(
          'عن ابن مسعود قال: قال رسول الله صلى الله عليه وسلم: (( الآيتان من آخر سورة البقرة من قرأهما في ليلة كفتاه .)). أخرجه الإمام البخاري ومسلم والإمام أحمد.'
          '\n'
          'وعن أبي ذر قال: قال رسول الله صلى الله عليه وسلم : ( إن الله ختم سورة البقرة بآيتين أعطانيهما من كنزه الذي تحت العرش فتعلموها وعلموهنَّ نساءكم وأبناءكم فإنهما'
          'صلاة وقراءة ودعاء )). أخرجه الحاكم.'),
      count: 4),
  Ayat(
      title: null,
      body: const Text(
          'المَ* اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ شَهِدَ اللَّهُ أَنَّهُ لا إِلَهَ إِلَّا هُوَ وَالْمَلَتَيكَةُ وَأُولُوا الْعِلْمِ قَابِمَا بِالْقِسْطِ لَا إِلَهَ إِلَّا هُوَ الْعَزِيزُ الْحَكِيمُ . '
          '\n'
          '\n'
          '(( يقول القارئ: وأنا أشهد بما شهد الله وأشهد الله على هذه الشهادة وأستودعه إياها فهي لي عنده وديعة إلى يوم القيامة )).'
          '\n'
          '\n'
          'إِنَّ الدِّينَ عِندَ اللَّهِ الْإِسْلَام. '),
      best: const Text(
          'عن ابن مسعود قال قال رسول الله صلى الله عليه وسلم : )) أنّ هذه الشهادة يُجاء بصاحبها يوم القيامة فيقول الله '
          ': عبدي عهد إلى عهداً وأنا أحق من أوفي بالعهد أدخلوا عبدي'
          'الجنة ). كما في الطبراني وغيره.'),
      count: 5),
  Ayat(
      title: null,
      body: const Text(
          'قُلِ اللَّهُمَّ مَلِكَ الْمُلْكِ تُؤْتِي الْمُلْكَ مَن تَشَاءُ وَتَنزِعُ الْمُلْكَ مِمَّن تَشَاءُ وَتُعِزُّ مَن تَشَاءُ وَتُذِلُّ مَن تَشَاءُ بِيَدِكَ الْخَيْرُ إِنَّكَ عَلَى كُلِّ شَيْءٍ قَدِيرُ*'
          '\n'
          ' تُولِجُ الَّيْلَ فِي النَّهَارِ وَتُولِجُ النَّهَارَ فِي الَّيْلِ'
          'وَتُخْرِجُ الْحَيَّ مِنَ الْمَيِّتِ وَتُخْرِجُ الْمَيْتَ مِنَ الْحَقِّ وَتَرْزُقُ مَن نَشَاءُ بِغَيْرِ حِساب  . '),
      best: const Text(
          'روى الطبراني بإسناده أن النبي الله قال : (( اسم الله الأعظم الذي إذا دعي به أجاب في هذه الآية ( قل اللهم مالك الملك . . . )) ، وعن علي ، قال: قال رسول الله صلى الله عليه وسلم: إن،'
          'فاتحة الكتاب وآية الكرسي، والآيتين من آل عمران ( شَهِدَ اللَّهُ أَنَّهُ لا إِلَهَ إِلا هُوَ ) إلى الإِسْلامُ ) و: ﴿ قُلِ اللَّهُمَّ مَالِكَ الْمُلْكِ تُؤْتِي الْمُلْكَ مَنْ قوله: ﴿ إِنَّ الدِّينَ عِنْدَ'
          'تَشَاءُ ) إلى قوله: ﴿ بِغَيْرِ حِسَاب ) ، قال الله تعالى: " حلفت لا يقرؤهنَّ أحد من عبادي إلا جعلت الجنة مثواه، ولأسكنته حظيرة القدس، '
          'ولنظرتُ إليه بعيني المكنونة كل يوم سبعين نظرة، ولقضيتُ له كلّ يوم سبعين ،حاجة أدناها المغفرة ولأعذته من كل عدو حاسد ونصرته ".'
          'أخرجه الخطيب البغدادي في كتابه موضح أوهام الجمع والتفريق، وهو حسن.'),
      count: 6),
  Ayat(
      title: null,
      body: const Text(
          'الْحَمْدُ لِلَّهِ الَّذِي خَلَقَ السَّمَوَاتِ وَالْأَرْضَ وَجَعَلَ الظُّلُمَتِ وَالنُّورَ ثُمَّ الَّذِينَ كَفَرُوا بِرَبِّهِمْ يَعْدِلُونَ * هُوَ الَّذِي خَلَقَكُم مِّن طِينٍ ثُمَّ قَضَى أَجَلا وَأَجَلٌ مُّسَمًّى عِندَهُ، ثُمَّ أَنتُمْ تَمْتَرُونَ * وَهُوَ اللَّهُ فِي السَّمَوَاتِ وَفِي الْأَرْضِ يَعْلَمُ سِرَّكُمْ'
          'وَجَهْرَكُمْ وَيَعْلَمُ مَا تَكْسِبُونَ .'),
      best: const Text(
          'أخرج الديلمي عن ابن مسعود قال : قال رسول الله صلى الله عليه وسلم: (( من صلى الفجر في جماعة وقعد في مصلاه وقرأ ثلاث آيات من أول سورة الأنعام وكل الله به سبعين ملكاً'
          'يسبحون الله'
          'ويستغفرون له إلى يوم القيامة )).'),
      count: 3),
  Ayat(
      title: null,
      body: const Text(
          ' لَقَدْ جَاءَكُمْ رَسُوكَ مِنْ أَنفُسِكُمْ عَزِيرُ عَلَيْهِ مَا عَنِتُّمْ حَرِيصٌ عَلَيْكُم بِالْمُؤْمِنِينَ'
          'رَءُوفٌ رَحِيمُ .'),
      best: null,
      count: 1),
  Ayat(
      title: null,
      body: const Text(
          'فَإِن تَوَلَّوْا فَقُلْ حَسْبِيَ اللَّهُ لَا إِلَهَ إِلَّا هُوَ عَلَيْهِ تَوَكَّلْةٌ وَهُوَ رَبُّ الْعَرْشِ الْعَظِيمِ .'),
      best: const Text('(( مَنْ قال حين يصبح وحين يمسي حسبي'
          'الله لا إله إلا هو...'
          'سبع مرات كفاه الله ما أهمه'
          'من أمر الدنيا والآخرة ...))'
          '\n'
          'أخرجه ابن السني في عمل اليوم والليلة وأبو داود وإسناده جيد.'),
      count: 7),
  Ayat(
      title: null,
      body: const Text(
          ' قُلِ ادْعُوا اللَّهَ أَوِ ادْعُوا الرَّحْمَنَ أَيَا مَا تَدْعُوا فَلَهُ الْأَسْمَاهُ الْحُسْنَى وَلَا تَجْهَرْ بِصَلَائِكَ وَلَا تُخَافِتْ بِهَا وَابْتَغِ بَيْنَ ذَلِكَ سَبِيلًا'
          '\n'
          'وَقُلِ الْحَمْدُ لِلَّهِ الَّذِي لَمْ يَتَّخِذْ وَلَنَا وَلَمْ يَكُن لَهُ شَرِيكُ فِي الْمُلْكِ وَلَمْ يَكُن لَّهُ وَلَى مِنَ الذُّلِّ وَكَبِرَهُ تَكْبِيرًا '
          '.'),
      best: const Text(
          'عن أبي موسى قال قال رسول الله صلى الله عليه وسلم : ((من قرأ في صبح 1 أو ادعوا الرحمن .... لم يمت قلبه ذلك اليوم ولا في تلك الليلة )) . أخرجه الديلمي'),
      count: 7),
  Ayat(
      title: null,
      body: const Text(
          'إِنَّ الَّذِينَ ءَامَنُوا وَعَمِلُوا الصَّلِحَتِ كَانَتْ لَهُمْ جَنَّتُ الْفِرْدَوسِ نُزُلًا * خَلِدِينَ فِيهَا لَا يَبْغُونَ عَنْهَا حِوَلا * قُل لَّوْ كَانَ الْبَحْرُ مِدَادًا لِكَلِمَتِ رَبِّي لَنَفِدَ الْبَحْرُ قَبْلَ أَن تَنفَدَ كَلِمَتُ رَبِّي وَلَوْ جِئْنَا بِمِثْلِهِ، '
          'مَدَدًا *  قُلْ إِنَّمَا أَنَا بَشَرٌ مِثْلُكُمْ يُوحَى إِلَى أَنَّمَا إِلَهُكُمْ إِلَهُ وَاحِدٌ فَمَن كَانَ يَرْجُوا لِقَاءَ رَبِّهِ، فَلْيَعْمَلْ عَمَلًا صَلِحَا وَلَا يُشْرِكْ بعِبَادَةِ رَبِّهِ أَحَدًا   .'),
      best: const Text(
          ' عن معاذ بن أنس الجهني عن أبيه قال : قال رسول الله صلى الله عليه وسلم: '
          '(( من قرأ أول سورة الكهف وآخرها كانت له نوراً من قدمه إلى رأسه ومن قرأها كلها كانت له نوراً ما بين السماء إلى الأرض ..). أخرجه الإمام أحمد.'),
      count: 3),
  Ayat(
      title: null,
      body: const Text(
          'وَعَنَتِ الْوُجُوهُ لِلْحَيِّ الْقَيُّومِ وَقَدْ خَابَ مَنْ حَمَلَ ظُلْمًا وَمَن يَعْمَلْ مِنَ الصَّلِحَتِ وَهُوَ مُؤْمِنٌ فَلَا يَخَافُ'
          'ظُلْمًا وَلَا هَضْما .'),
      best: null,
      count: 4),
  Ayat(
      title: null,
      body: const Text(
          ' أَفَحَسِبْتُمْ أَنَّمَا خَلَقْنَكُمْ عَبَثًا وَأَنَّكُمْ إِلَيْنَا لَا تُرْجَعُونَ * فَتَعَلَى اللَّهُ الْمَلِكُ الْحَقِّ لَا إِلَهَ إِلَّا هُوَ رَبُّ الْعَرْشِ'
          '*الْكَرِيمِ * وَمَن يَدْعُ مَعَ اللَّهِ إِلَيْهَا آخَرَ لَا بُرْهَانَ لَهُ بِهِ فَإِنَّمَا حِسَابُهُ عِندَ رَبِّهِ إِنَّهُ لَا يُفْلِحُ الْكَفِرُونَ )'
          'وَقُل رَّبِّ اغْفِرْ وَارْحَمْ وَأَنتَ خَيْرُ الرَّحِمِينَ  .'),
      best: const Text(
          'روينا في كتاب ابن السني عن محمد بن إبراهيم بن الحارث عن أبيه قال: بعثنا رسول الله في سرية وأمرنا أن نقول إذا أمسينا وأصبحنا (( أفحسبتم أنما خلقناكم عبثاً ....)) '
          'قال: فقرأناها فغنمنا وسلِمنا.ه، '),
      count: 3),
  Ayat(
      title: null,
      body: const Text(
          'فَسُبْحَانَ اللَّهِ حِينَ تُمْسُونَ وَحِينَ تُصْبِحُونَ * وَلَهُ'
          '*الْحَمْدُ فِي السَّمَوَاتِ وَالْأَرْضِ وَعَشِيًّا وَحِينَ تُظْهِرُونَ*'
          'يُخْرِجُ الْحَيَّ مِنَ الْمَيِّتِ وَيُخْرِجُ الْمَيِّتَ مِنَ الْحَقِّ وَيُحْيِ الْأَرْضَ بعْدَ مَوْتِهَا وَكَذَلِكَ تُخْرَجُونَ .'),
      best: const Text(
          ' عن عبد الله بن عباس قال: قال رسول الله صلى الله عليه وسلم : من قال حين يصبح (( فسبحان الله حين تمسون وحين تصبحون ... أدرك ما فاته في يومه، '
          'ومن قالها حين يمسي أدرك ما فاته في ليلته )) . أخرجه أبو داود والطبراني وغيرهما.'),
      count: 3),
];
