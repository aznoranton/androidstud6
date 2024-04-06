main
import 'package:flutter/material.dart';
import 'package:untitled/screens/first.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/list1': (context) => ListScreen1(),
        '/list2': (context) => ListScreen2(),
        '/list3': (context) => ListScreen3(),
        '/list4': (context) => ListScreen4(),
        '/list5': (context) => ListScreen5(),
      },

    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Домашняя страница'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list1');
              },
              child: Text('Список 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list2');
              },
              child: Text('Список 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list3');
              },
              child: Text('Список 3'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list4');
              },
              child: Text('Список 4'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list5');
              },
              child: Text('Список 5'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstScreen()),
                );
              },
              child: const Text('Перейти к другой реализации'),
            ),
          ],
        ),
      ),
    );
  }
}

class ListScreen1 extends StatefulWidget {
  @override
  _ListScreen1State createState() => _ListScreen1State();
}

class _ListScreen1State extends State<ListScreen1> {
  List<String> items = ['Значение 0', 'Значение 1', 'Значение 2'];
  int ind = 3;

  void removeItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список 1'),
      ),
      body: Column(
        children: [

          // ElevatedButton(
          //   onPressed: addItem,
          //   child: Text('+'),
          // ),
          Expanded(
            child: Column(
              children: items
                  .asMap()
                  .entries
                  .map(
                    (item) => ListTile(
                  title: Text(item.value),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => removeItem(item.key),
                  ),
                ),
              )
                  .toList(),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            items.add('Значение ' + (ind).toString());
            ind++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ListScreen2 extends StatefulWidget {
  @override
  _ListScreen2State createState() => _ListScreen2State();
}

class _ListScreen2State extends State<ListScreen2> {
  List<String> _list = ['Значение 0', 'Значение 1', 'Значение 2'];
  int ind = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список 2'),
      ),
      body: ListView.builder(
        itemCount: _list.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_list[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _list.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _list.add('Значение ' + ind.toString());
            ind++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ListScreen3 extends StatefulWidget {
  @override
  _ListScreen3State createState() => _ListScreen3State();
}

class _ListScreen3State extends State<ListScreen3> {
  List<String> _list = ['Значение 0', 'Значение 1', 'Значение 2'];
  int ind = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список 3'),
      ),
      body: ListView.separated(
        itemCount: _list.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_list[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _list.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _list.add('Значение ' + ind.toString());
            ind++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ListScreen4 extends StatefulWidget {
  @override
  _ListScreen4State createState() => _ListScreen4State();
}

class _ListScreen4State extends State<ListScreen4> {
  List<String> _list = ['Значение 0', 'Значение 1', 'Значение 2'];
  int ind = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список 3'),
      ),
      body: ListView.separated(
        itemCount: _list.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_list[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.green,
              onPressed: () {
                setState(() {
                  _list.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _list.add('Значение ' + ind.toString());
            ind++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ListScreen5 extends StatefulWidget {
  @override
  _ListScreen5State createState() => _ListScreen5State();
}

class _ListScreen5State extends State<ListScreen5> {
  List<String> _list = ['Значение 0', 'Значение 1', 'Значение 2'];
  int ind = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список 3'),
      ),
      body: ListView.separated(
        itemCount: _list.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_list[index]),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                setState(() {
                  _list.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _list.add('Значение ' + ind.toString());
            ind++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


first
  import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/screens/second.dart';
import 'package:untitled/screens/third.dart';
import 'package:untitled/screens/fourth.dart';
import 'package:untitled/screens/fifth.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'First Screen',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text('Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
                );
              },
              child: const Text('Third Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FourthScreen()),
                );
              },
              child: const Text('Fourth Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FifthScreen()),
                );
              },
              child: const Text('Fifth Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: const Text('Come back'),
            ),
          ],
        ),
      ),
    );
  }
}
