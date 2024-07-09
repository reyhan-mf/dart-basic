/* 
Collections: Is a group of values that belong together
In this section:
- Lists, Sets, maps
- How to use them, common operations
- Type system & type inference with collections
- Collection-if, collection-for, spreads

 */

import '../02-dart-basic/02.08-string-interpolation.dart';

void main() {
  // var cities = ['London', 'Paris', 'Moscow'];
  // print(cities[2]);
  // for (var city in cities) {
  //   print(city);
  // }
  // cities.add('Tokyo');
  // print(cities);
  // most common operation to work with list
  // cities.length;
  // cities.isEmpty;
  // cities.insert(1, 'Rome');
  // cities.removeAt(2);
  // cities.clear();
  // cities.contains('Moscow');
  // cities.indexOf('Paris');


/*Wrap Up
can still modify contents of final variables 
but not with const variables

final cities = ['London', 'Paros', 'Moscow'];
// CANT DO THIS cities = ['Venice'];
cities[1] = 'Venice';
 */

/*
Sets
  var countries = {'Italy', 'UK', 'Russia'};
  countries.elementAt(0);
 */

/*
Type Annotation
<String, dynamic> means type annotation
name = String
value = dynamic, it could be string, int or a double
Map<String, dynamic> person = {
  'name' : 'Reyhan',
  'age' : 22,
  'height' : 1.84,
};

var name = person['name'];
print(name);
 */

/*
Iterating through a map

Map<String, dynamic> person = {
  'name' : 'Reyhan',
  'age' : 22,
  'height' : 1.84,
};

for (var key in person.keys) {
  print(person[key]);
}
 */

/*
Nested List
var restaurants = [
{
  'name' : 'reyhan'
},
{
  'name' : 'rendra'
},
]
 */

/*
Collections-if
final colors = ['grey', 'brown'];
const addBlue = false;
const addRed = true;
final colors = [
  'grey',
  'brown',
  if (addBlue)
    'blue',
  if (addRed)
    'red',
];
 */

/*
Collection-for
const addBlue = false;
const addRed = true;
const extraColors = ['yellow', 'green'];
final colors = [
  'grey',
  'brown',
  if (addBlue)
    'blue',
  if (addRed)
    'red',
  for (var color in extraColors)
    color,
];
print(colors);
}
 */

/*
Spreading
const addBlue = false;
const addRed = true;
const extraColors = ['yellow', 'green'];
final colors = [
  'grey',
  'brown',
  if (addBlue)
    'blue',
  if (addRed)
    'red',
  ...extraColors,
];
print(colors);
 */

const addBlue = false;
const addRed = true;
const extraColors = ['yellow', 'green'];
final colors = [
  'grey',
  'brown',
  if (addBlue)
    'blue',
  if (addRed)
    'red',
  ...extraColors,
];
print(colors);
}