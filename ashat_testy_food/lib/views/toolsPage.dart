import 'package:ashat_testy_food/views/recipesPage.dart';
import 'package:flutter/material.dart';

class Tools extends StatefulWidget {
  const Tools({Key? key}) : super(key: key);

  @override
  State<Tools> createState() => _ToolsState();
}

class _ToolsState extends State<Tools> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ListTile(
              title: Text(
                'Инструменты',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              contentPadding: EdgeInsets.all(10),
            ),
            tools(
              'Барабанное сито',
              'https://avatars.mds.yandex.net/get-mpic/4547325/img_id1341958762213549727.jpeg/orig',
              'Это сито используют для протирания вареной и печеной картошки для пюре, а также чтобы приготовить мясной или рыбный фарш для муссов. Приготовленные овощи или мясо вываливают на его мелкую сетку и протирают скребком.',
              'Сито – это приспособление для просеивания муки, которое сегодня можно найти практически на каждой кухне. Несмотря на то, что это приспособление является довольно популярным и в наши дни, впервые оно появилось еще в далекой древности. За годы своего существования сито неоднократно меняло свой внешний вид, с функциональной точки зрения оставаясь тем же практичным предметом кухонного убранства.',
              'tools',
            ),
            tools(
              'Барный набор',
              'https://ae04.alicdn.com/kf/Hd5ecb85325c44d758d61306f37b914abw/-.jpg',
              'Популярность домашних барных наборов в Америке пришлась как раз на эпоху 50–60-х годов — этому способствовала мода на коктейльные вечеринки и необходимость в чем-то смешивать мартини для мужа, возвращающегося с работы домой. В современный домашний барный набор обычно входят шейкер, нож для фруктов, щипцы для льда, открывалка и барменский нож.',
              'Для приготовления коктейлей требуются специальные приспособления, называемые барным инвентарем. Количество инструментов зависит от поставленных задач и уровня мастерства бармена. Статья содержит краткое описание основных элементов и поможет новичкам сориентироваться при комплектации домашнего бара: что приобрести в первую очередь, а с чем можно подождать до следующей зарплаты.',
              'tools',
            ),
            tools(
              'Блендер',
              'https://images.unsplash.com/photo-1585515320310-259814833e62?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
              'С превращением супа в пюре справится любой блендер. Хоть Braun, хоть Bosch, хоть Kitchen Aid. Это все-таки не лед молоть. Главное, чтобы кувшин был стеклянный или стальной. Горячий суп не для пластика. Есть, конечно, погружные блендеры, которыми можно сделать пюре прямо в кастрюле. Но редакция журнала «Афиша–Еда» отдает предпочтение тем, что с кувшинами. У них результат нежнее.',
              'Блендер — это нечто среднее между миксером и кухонным комбайном, правда, с одной оговоркой. От миксера блендер получил возможность смешивать что-либо, а от кухонного комбайна — ножи для измельчения.',
              'tools',
            ),
            tools(
              'Кольцо кулинарное',
              'https://cdn1.ozone.ru/s3/multimedia-w/6010772456.jpg',
              'Эту штуковину называют кулинарным кольцом, или каттером, а профессионалы — круглой вырубкой. Это универсальный инструмент, который вырезает идеальные круги из теста, помогает выложить тартар или пожарить аккуратную глазунью. Диаметр и высота колец бывают разными. В доме лучше держать разнокалиберный набор: лишним не будет точно.',
              'В магазинах можно купить такой предмет, как кулинарное кольцо. Оно бывает разных размеров, а выполнено обычно из железа или стали. Его можно использовать как для сервировки, так и для приготовления многих блюд. Чтобы не оставлять этот нужный предмет без дела, лучше ознакомиться с интересными рецептами, которые без него не приготовить. Даже обычный и уже привычный салат можно подать в такой посуде, что сделает его оригинальным.',
              'tools',
            ),
          ],
        ),
      ),
    );
  }
}

Container tools(name, img, subtitle, desc, type) {
  return Container(
    margin: EdgeInsets.all(10),
    child: Builder(builder: (context) {
      return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/pages',
            arguments: {
              'name': name,
              'img': img,
              'subtitle': subtitle,
              'desc': desc,
              'type': type,
            },
          );
        },
        style: ElevatedButton.styleFrom(
          minimumSize: Size.zero,
          padding: EdgeInsets.zero,
          primary: Colors.white,
          onPrimary: Color.fromARGB(255, 124, 124, 124),
        ),
        child: Column(
          children: [
            Container(
              child: Image.network(
                img,
                width: double.maxFinite,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: 10, top: 10),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  subtitle,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      );
    }),
  );
}
