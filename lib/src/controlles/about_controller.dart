import 'package:utilizades/src/models/about_model.dart';

class AboutController {

  AboutModel getAbout(){
    return AboutModel(
      photoUrl: "https://github.com/account"
     abboutMe: [
      tenho 16 anos robes
      gosto de aminhar assitir filmes ,series e jogar volei
     ],
     socialLinks: [
      socialLink(
        nome: "Github",
        icon: Icons.add,
        url:"https://github.com/Eloyse13"
      ),
      socialLinks(
        nome: "Linkedin",
        icon: Icons.add,
        url: 
      ),
     ]
     );
  }
}