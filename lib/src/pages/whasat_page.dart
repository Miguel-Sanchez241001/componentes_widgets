import 'package:flutter/material.dart';

class WasaPage extends StatelessWidget {
   WasaPage({super.key});
  final listaImagne = ['https://pbs.twimg.com/media/EmNJY_zXUAIlZJY.jpg',
    'https://depor.com/resizer/Gz-OluMBwq5PPitGbRdwyCu2F2k=/980x0/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KT3PKSQJI5DA5JHAQYDIZRQVLM.jpg',
    'https://s.yimg.com/ny/api/res/1.2/OOONweGWyhq9yFMwerVisA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQzMA--/https://s.yimg.com/uu/api/res/1.2/wGDUVqvfX_l4yN6EdrbjcA--~B/aD02NzA7dz05OTg7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/es/forbes_argentina_485/34100444a2902b8a79580054bd3602c0',
    'https://www.besame.fm/wp-content/uploads/2021/03/Katalina-G%C3%B3mez-se-trag%C3%B3-la-tanga-en-sensual-foto-debido-al-tama%C3%B1o-de-su-cola.jpg',
    
    ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: _barraSuperio2(context),
        body: ListView(
          children: _itemsLista(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(18, 140,126, 1),
          child: const Icon(Icons.message),
          onPressed: () {
            print(
                '${(MediaQuery.of(context).size.height)} / ancho ${(MediaQuery.of(context).size.width)}');
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  PreferredSizeWidget _barraSuperio() {
    return AppBar(
      automaticallyImplyLeading: false, // quitar flecha de atras
      // sin tema porque hereda del widget material
      title: const Text(
        'WhatsApp',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(Icons.search),
              const SizedBox(width: 15),
              const Icon(Icons.more_vert),
            ],
          ),
        )
      ],
    );
  }

  _barraSuperio2(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          automaticallyImplyLeading: false, // quitar flecha de atras
          // sin tema porque hereda del widget material
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(Icons.search),
                  const SizedBox(width: 15),
                  const Icon(Icons.more_vert),
                ],
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromWidth(100),
            child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 2,

                //labelStyle:TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  Container(
                      width: 10,
                      child: Tab(
                        child: Center(
                            child: Icon(
                          Icons.groups_rounded,
                          size: 18,
                        )),
                      )),
                  SizedBox(
                      width: 70,
                      child: Tab(
                        child: Center(
                          child: Row(
                            children: [
                              Text('CHATS', style: TextStyle(fontSize: 14)),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: const Text(
                                      '1',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Color(0xFF075E55)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Container(
                      width: 90,
                      child: Tab(
                        child: Text('ESTADOS', style: TextStyle(fontSize: 14)),
                      )),
                  Container(
                      width: 90,
                      child: Tab(
                        child: Text('LLAMADAS', style: TextStyle(fontSize: 14)),
                      )),
                ]),
          ),
        ));
  }

  _itemsLista() {
    List<Widget> lista = [];
    for (var i = 0; i < 4; i++) {
      Widget carta = Card(
        elevation: 0,
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(listaImagne[i]),
                  radius: 25.0,
                ),
                title: Row(
                  children: [
                    Text(
                      '${((i ==3|| i==2)? 'Osita':'Osito')}  ${(i+1)}',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 175),
                    Text(
                      '${(1+i)}:45 p. m.',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 173, 169, 169)),
                    )
                  ],
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                      '${((i ==3|| i==2)? 'Bebecito hoy te la entierro':'Vamos a dotear')} '),
                ),
              ),
            ),
          ],
        ),
      );
      lista.add(carta);
    }
    return lista;
  }
}
