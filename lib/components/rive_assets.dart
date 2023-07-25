import 'package:rive/rive.dart';

class RiveAsset{
  final String src;
  final String stateMachineName;
  final String artboard;
  late  SMIBool? input;
  final String title;

RiveAsset(this.src,{
  required this.artboard,
  required this.stateMachineName,
  required this.title,
  this.input
});

set setInput(SMIBool status){
  input =status;
}
}
List<RiveAsset> sideMenus =[
  RiveAsset("assets/icons.riv", artboard: "HOME", stateMachineName: "HOME_Interactivity", title:"Home")
]