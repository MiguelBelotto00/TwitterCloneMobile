import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class TwitterHomePage extends StatelessWidget {
  const TwitterHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        CircleAvatar(
                          radius: 25.0,
                          backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1332491794165149697/vA04asZv_400x400.jpg"),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: const Text("Belotto",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20.0),),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Text("@MiguelBelotto00",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 15.0),)),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 10.0),
                            child: Text("385",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),),
                          ),
                          Text("Siguiendo",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 15.0),),
                          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text("109",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),),),
                          Text("Siguiendo",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 15.0),),
                          ],
                      )
                    ],
                  ),
                )),
            const Divider(color: Colors.grey,),
            ListTile(
              leading: Icon(Icons.person_outline,color: Colors.white,size: 25.0,),
              title: const Text("Perfil",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.list_alt_rounded,color: Colors.white,size: 25.0,),
              title: const Text("Listas",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.bookmark_border_outlined,color: Colors.white,size: 25.0,),
              title: const Text("Elementos Guardados",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.bolt_outlined,color: Colors.white,size: 25.0,),
              title: const Text("Momentos",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.payments_outlined,color: Colors.white,size: 25.0,),
              title: const Text("Monetización",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
              onTap: (){},
            ),
            Divider(color: Colors.grey,),
            ListTile(
              leading: Icon(Icons.rocket_launch_outlined,color: Colors.white,size: 25.0,),
              title: const Text("Twitter para profesionales",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.launch_outlined,color: Colors.white,size: 25.0,),
              title: const Text("Twitter ads",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
              onTap: (){},
            ),
            Divider(color: Colors.grey,),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.white,size: 25.0,),
              title: const Text("Configuracion y Privacidad",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.help_outline,color: Colors.white,size: 25.0,),
              title: const Text("Centro de ayuda",style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w300),),
              onTap: (){},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context){
            return InkWell(
                onTap: (){
                  Scaffold.of(context).openDrawer();
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1332491794165149697/vA04asZv_400x400.jpg"),
                )
            );
          },
        ),
        leadingWidth: 40.0,
        shadowColor: Colors.grey,
        elevation: 1.0,
      actions: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              Container(
                width: 30.0,
                margin: EdgeInsets.only(left: 40.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://cdn-icons-png.flaticon.com/512/733/733579.png"),
                    fit: BoxFit.contain,
                  ),
                ),),
              Expanded(child: Container()),
              IconButton(onPressed: (){}, icon: const Icon(Icons.auto_awesome_outlined))
            ],
          ),
        ),

      ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
             Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
               decoration: const BoxDecoration(
                color: Colors.black,
               ),
               child: ListView(
                physics: AlwaysScrollableScrollPhysics(),
                 children: [
                  ListTile(
                   leading: CircleAvatar(backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1534892409775071232/kECMsbi0_400x400.jpg"),),
                   title: Row(
                    children: [
                    Text("El independiente", style: TextStyle(color: Colors.white),),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text("@elindepepy", style: TextStyle(color: Colors.grey),),
                   ],),
                   subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                    Text("#AHORA Renato Ibarrola, suplente de Carlos Rejala (con permiso por 2 meses) juró en la Cámara de Diputados. Los cartistas alegaban que sólo con una renuncia puede asumir el suplente.",style: TextStyle(color: Colors.white),),
                    Padding(padding: EdgeInsets.only(top: 5.0)),
                    Container(
                      width: 300.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(image: NetworkImage("https://pbs.twimg.com/media/FYrZvNuWIAAZJ2C?format=jpg&name=large"),
                        fit: BoxFit.cover)
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FaIcon(FontAwesomeIcons.comment,color: Colors.grey, size: 15.0,),
                    FaIcon(FontAwesomeIcons.retweet,color: Colors.grey,size: 15.0),
                    FaIcon(FontAwesomeIcons.heart,color: Colors.grey,size: 15.0),
                     FaIcon(FontAwesomeIcons.share,color: Colors.grey,size: 15.0),
                    ],
                   )],)
                   ),
                  Divider(color: Colors.grey,),
                  ListTile(
                   leading: CircleAvatar(backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1529956155937759233/Nyn1HZWF_400x400.jpg"),),
                   title: Row(
                    children: [
                    Text("Elon Musk", style: TextStyle(color: Colors.white),),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text("@elonmusk", style: TextStyle(color: Colors.grey),),
                   ],),
                   subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                    Text("A new philosophy of the future is needed. I believe it should be curiosity about the Universe – expand humanity to become a multiplanet, then interstellar, species to see whats out there.",style: TextStyle(color: Colors.white),),
                    Padding(padding: EdgeInsets.only(top: 5.0)),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(image: NetworkImage(""),
                        fit: BoxFit.cover)
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FaIcon(FontAwesomeIcons.comment,color: Colors.grey, size: 15.0,),
                    FaIcon(FontAwesomeIcons.retweet,color: Colors.grey,size: 15.0),
                    FaIcon(FontAwesomeIcons.heart,color: Colors.grey,size: 15.0),
                     FaIcon(FontAwesomeIcons.share,color: Colors.grey,size: 15.0),
                    ],
                   )],)
                   ),
                  Divider(color: Colors.grey,),
                  ListTile(
                   leading: CircleAvatar(backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1477314156944666630/rxdk_Omi_400x400.jpg"),),
                   title: Row(
                    children: [
                    Text("Club Cerro Porteño", style: TextStyle(color: Colors.white),),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text("@CCP1912oficial", style: TextStyle(color: Colors.grey),),
                   ],),
                   subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                    Text("Imágenes del entrenamiento de este miércoles en el Barrio 🏟  \n ¡Vamos Ciclón! 🌪",style: TextStyle(color: Colors.white),),
                    Padding(padding: EdgeInsets.only(top: 5.0)),
                    Container(
                      width: 300.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(image: NetworkImage("https://pbs.twimg.com/media/FYtPTNEXgAMKzYB?format=jpg&name=large"),
                        fit: BoxFit.cover)
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FaIcon(FontAwesomeIcons.comment,color: Colors.grey, size: 15.0,),
                    FaIcon(FontAwesomeIcons.retweet,color: Colors.grey,size: 15.0),
                    FaIcon(FontAwesomeIcons.heart,color: Colors.grey,size: 15.0),
                     FaIcon(FontAwesomeIcons.share,color: Colors.grey,size: 15.0),
                    ],
                   )],)
                   ),
                  Divider(color: Colors.grey,),
                  ListTile(
                   leading: CircleAvatar(backgroundImage: NetworkImage("https://pbs.twimg.com/profile_images/1551218434754723840/bsR7_b5A_400x400.jpg"),),
                   title: Row(
                    children: [
                    Text("Club Olimpia", style: TextStyle(color: Colors.white),),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Text("@elClubOlimpia", style: TextStyle(color: Colors.grey),),
                   ],),
                   subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                    Text("LA GLORIA NO TIENE PRECIO.\nEl día que todo cambió.\nNo existen imposibles, los sueños no son inalcanzables.\nHace 43 años, #Olimpia quebraba la gran hegemonía del Atlántico y conquistaba la primera Libertadores de su historia.\n¡Salud, Campeones del 79! 🌟🌎",style: TextStyle(color: Colors.white),),
                    Padding(padding: EdgeInsets.only(top: 5.0)),
                    Container(
                      width: 300.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        image: DecorationImage(image: NetworkImage("https://pbs.twimg.com/media/FYrog5PWIAI7mgN?format=jpg&name=4096x4096"),
                        fit: BoxFit.cover)
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10.0)),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FaIcon(FontAwesomeIcons.comment,color: Colors.grey, size: 15.0,),
                    FaIcon(FontAwesomeIcons.retweet,color: Colors.grey,size: 15.0),
                    FaIcon(FontAwesomeIcons.heart,color: Colors.grey,size: 15.0),
                     FaIcon(FontAwesomeIcons.share,color: Colors.grey,size: 15.0),
                    ],
                   )],)
                   ),
                  Divider(color: Colors.grey,),
                  Container(
                    width: 400.0,
                    height: 150.0,
                    child: Text("Hi"),)
               ],),
             )
          ]),
        ),]
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.people_alt,color: Colors.white,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_outlined,color: Colors.white,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.mail_outlined,color: Colors.white,),label: "")
        ]),
    );
  }
}

