
import 'Question.dart';

class ActionHistory{
  var  _indexHistory = 0 ;//initialise l'increment  du tableau history

final List<Question> _history = [
  Question(q:"Vous venez de crevez un pneu à St André. Vous n'avez pas de téléphone vous décidez de faire du stop. Une ford fiesta rouge s'arrête et le conducteur vous demande si vous voulez qu'il vous dépanne." ,ro:"Vous lui remerciez et vous montez dans la voiture",rt:"Vous lui demandez s'il n'est pas un meurtrier avant !"),
  Question(q:"Il acquiesce de la tête sans faire attention à la question.",ro: "Au moins il est honnête. Vous montez ! ",rt:"Attends, mais je sais comment changer un pneu voyons !"),
  Question(q: "Lorsqu'il commence à conduire, il vous demande d'ouvrir la boite à gant. À l’intérieur, vous trouverez un couteau ensanglanté, deux doigts coupés et un CD de T-Matt.",ro: "J'adore T-Matt, je lui donne le CD.",rt:" C'est lui ou moi, je prends le couteau et je le poignarde."),
  Question(q:" Woaw ! Quelle évasion ! ",ro:" Woaw ! Quelle évasion ! ",rt:""),
  Question(q: "En traversant la route du littoral, vous réfléchissez à la sagesse douteuse de poignarder quelqu’un pendant qu’il conduit une voiture dans laquelle vous êtes.",ro:"Recommencer",rt:""),
  Question(q:"Vous vous faites un bon dalon et vous chantez le dernier son de T-matt ensemble. Il vous dépose à Cambaie et il vous demande si vous connaissez un bon endroit pour jeter un corps." ,ro:"Recommencer",rt:""),
];

void nextQuestion ( numberChoice) {
  if (numberChoice == 1 && _indexHistory == 0 ) {
    _indexHistory = 2;
    print ('index 0c1 $_indexHistory');
  }else if (numberChoice == 2 && _indexHistory == 0 ) {
    _indexHistory = 1;
    print ('index 0c2 $_indexHistory');
  }else if (_indexHistory == 1 && numberChoice == 1) {
    _indexHistory = 2;
  }else if (_indexHistory == 1 && numberChoice == 2) {
    _indexHistory = 3;
  }else if (_indexHistory == 2 && numberChoice == 1) {
    _indexHistory = 5;
  }else if (_indexHistory == 2 && numberChoice == 2) {
    _indexHistory = 4;
  }else if ((_indexHistory == 3 || _indexHistory == 4 || _indexHistory == 5) && numberChoice == 1) {
    _indexHistory = 0;
  }
  print ('choice $numberChoice');
  print ('index $_indexHistory');
}

  String getStory() {
    return _history[_indexHistory].question;
  }

  String getChoice1() {
    return _history[_indexHistory].reponseOne;
  }

  String getChoice2() {
    return _history[_indexHistory].reponseTwo;
  }

}

