  import 'package:flutter/material.dart';


class AccordionAtom extends StatelessWidget {
 final AccordionStyle? style;

 const AccordionAtom({
 super.key,
 this.style,
 });

 @override
 Widget build(BuildContext context) {
 return  ElevatedButton(onPressed: ()=> Caixa().adicionar(novoItem: Gato),
 child:const  SizedBox(height: 50,width: 200,),);

  
 
 }
}
class AccordionStyle {
 final Color backgroundColor;
 final Color borderColor;

 const AccordionStyle({
 required this.backgroundColor,
 required this.borderColor
 });
 }

 class DsStyleExtension extends ThemeExtension<DsStyleExtension> {
 final AccordionStyle accordionStyle;

 DsStyleExtension({required this.accordionStyle});

 @override
 DsStyleExtension copyWith({
 AccordionStyle? accordionStyle,
 }) {
 return DsStyleExtension(
 accordionStyle: accordionStyle ?? this.accordionStyle,
 );
 }

 @override
  ThemeExtension<DsStyleExtension> lerp(
  covariant ThemeExtension<DsStyleExtension>? other,
 double t,
 ) {
 if (other == null || t < 0.5) return this;
 return other;
 }
 }



 class Animal {
   String? nome;
}

class Gato extends Animal {
  String ?cor;
}

class Caixa<T> {
  T ? item;
  
  void adicionar({T ?novoItem}) {
    item = novoItem;
  }
}
