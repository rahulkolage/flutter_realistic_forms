# flutter_realistic_forms

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


- https://fluttercrashcourse.com/blog/realistic-forms-part1
- https://github.com/seenickcode/flutter_realistic_forms

-   If you want to avoid warning "Prefer const with constant constructors."
-   in analysis_options.yaml, under linter => rules => set following rules
-    prefer_const_constructors: false
-    prefer_const_literals_to_create_immutables: false

### A value of type 'bool?' can't be assigned to a variable of type 'bool'. Try changing the type of the variable, or casting the right-hand type to 'bool'.
-   This can be solved by casting the right-hand type to desired type

### Form validation
-   https://docs.flutter.dev/cookbook/forms/validation
-   use exlamation mark or null to handle empty

-   showSnackBar is deprecated form Scaffold, use ScaffoldMessenger
