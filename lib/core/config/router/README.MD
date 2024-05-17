
# Params

# 1. Using `pathParameters`

- When you know number of params beforehand use pathParameters prop in

```dart
context.goNamed()
```

### Define it as:

```dart
GoRoute(
  path: '/sample/:id1/:id2',  // 👈 Definition of params in the path is important
  name: 'sample',
  builder: (context, state) => SampleWidget(
    id1: state.pathParameters['id1'],
    id2: state.pathParameters['id2'],
  ),
),
```

### Call it as:

```dart
ElevatedButton(
  onPressed: () {
    var param1 = "param1";
    var param2 = "param2";
    context.goNamed("sample", pathParameters: {'id1': param1, 'id2': param2});
  },
  child: const Text("Hello"),
),
```

### Receive it as:
```dart
class SampleWidget extends StatelessWidget {
  String? id1;
  String? id2;
  SampleWidget({super.key, this.id1, this.id2});

  @override
  Widget build(BuildContext context) {
     ...
  }
}
```

# 2. Using uri.queryParameters
- Use the queryParameters in

```dart
context.goNamed()
ex: context.goNamed('sample', queryParameters: {'id1': 'param1'})
function or simply add params after the ? in the URL of
context.go()
ex: context.go('/sample?id1=param1').
```
- The best thing about queryParameters is that you don't have to explicitly define them in your route path and can easily access them using the state.uri.queryParameters method. You can add miscellaneous user-related data as a query parameter.

### Define it as :

```dart
GoRoute(
  name: "sample",
  path: "/sample",          
  builder: (context, state) => SampleWidget(
      id1: state.uri.queryParameters['id1'],
      id2: state.uri.queryParameters['id2'],
  ),
)
```

### Call it as:

```dart
ElevatedButton(
  onPressed: () {
    var param1 = "param1";
    var param2 = "param2";
    context.goNamed("sample", queryParameters: {'id1': param1, 'id2': param2});
    // context.go("/sample?id1=$param1&id2=$param2"); 👈 or like this.
  },
  child: const Text("Hello"),
),
```

### Receive it as:

```dart
class SampleWidget extends StatelessWidget {
  String? id1;
  String? id2;
  SampleWidget({super.key, this.id1, this.id2});

  @override
  Widget build(BuildContext context) {
     ...
  }
}
```

# 3. Using extra
- Use this when you want to pass a model/object between routes

```dart
GoRoute(
  path: '/sample',
  builder: (context, state) {
    Sample sample = state.extra as Sample; // 👈 casting is important
    return GoToScreen(object: sample);
  },
),
```