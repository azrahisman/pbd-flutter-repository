# counter_7

A new Flutter project: a counter program where you can increment and decrement. Also shows whether it is displaying an odd or even number.

# Questions
1. Explain what is meant by stateless widget and stateful widget and explain the difference between them.
A stateless widget is just like its name, stateless, so it only has one state and the user can not change or interact with it (e.g. icons, etc.). On the other hand, a stateful widget is dynamic and responsive, therefore user can interact with it (e.g. pushing a button, etc.)

2. Mention what widgets you use in this project and explain their functions.
In this project, stateful widgets are used starting from the MyHomePage, where it holds State object that contains fields that affect how it looks. MyApp is a stateless widget because it is a layout and the layout itself won't change. It also doesn't trigger rebuild.

3. What is the function of setState()? Explain what variables can be affected by the function.
To tell Flutter that something will change and therefore will need a rebuild. Without this, although a change was supposed to happen, will not appear to happen. The variables included in the function where a setState() was called will be affected by setState().

4. Explain the difference between const and final.
"final" means single-assignment: a final variable or field must have an initializer. Once assigned a value, a final variable's value cannot be changed. final modifies variables.
An initializer with final means that when assigned a value, the value can't be changed.
An object with const means that the object will be **determined at compile time** and after that it will be immutable.

5. Explain how you implement the checklist above.
First, I ran flutter create counter_7 in my terminal and I navigated to its directory. I then ran the project via terminal to see its initial state. Then I open the main.dart file and applied the if-else conditions for displaying the "EVEN" or "ODD". I continue by adding the new decrement function and button and for this to be done, I used Row() in the floatingActionButton so that it can hold two buttons. Then I added the final touches of colors before pushing the finalized project to my GitHub repository.

# Assignment 8 Questions
1.  Explain the difference between Navigator.push and Navigator.pushReplacement.
Naigator.push() is used to add other routes on top of the current screen stack where new screen is displayed on top of previous screen. Navigator.pushReplacement(), however, replaces the current route of navigator.

2.  List all the widgets you used in this project and explain their functions.
In this project, I used cards for displaying the inputted data by user. Column, Drawer, and ListTile were used for displaying the hamburger bar. Scaffold is used for overall placement of widgets, and Appbar is used for displaying the blue bar containing title.

3.  Name the types of events that exist in Flutter (example: onPressed).
For this project, I used onPressed for buttons, and onSaved for forms.

4.  Explain how the Navigator works in "switching" pages of a Flutter application.
For small apps, Flutter uses Navigator whereas for more complex ones, Flutter uses Router. Navigator displays the screen as stacks and sometimes use MaterialApp.routes parameter for deep links. The downside is Flutter doesn’t support the browser forward button for applications using named routes. Router tackles this with a routing package that is able to parse the route path and configure Navigator.

# Assignment 9 Questions
1.  Can we retrieve JSON data without creating a model first? If yes, is it better than creating a model before retrieving JSON data?
Yes, we can by using the JSONObject.parse(). It is applicable if we're trying to fetch it from a web service. Using the available resources that allows us to instantly obtain the code for the models (such as QuickType) also makes it easier.

2.  List the widgets that you used in this project and explain their functions.
Apart from the existing widgets from assignment 8, I added a few more buttons for navigating, and also ListTiles for displaying the movie titles.

3.  Explain the mechanism of retrieving data from json so it can be shown in Flutter.
It requests the data from the requested web service, then the obtained data will be converted to the models we've created beforehand. The data then can be displayed using the FutureBuilder().

4.  Explain how you implemented the checklist above.
From previous assignment, I added the new folders for model and page and added each respectives required files (for model and also for displaying data and detailed data). I used the given ways from last week's tutorial using quicktype to quickly get the needed code for my model. I then display the titles only as ListTiles which if clicked will redirect to a more detailed page of the movie title pressed. Here I also used some things I learned from last week's assignment. Then I import more required things including the http (and also adding the needed lines in in the android/app/src/main/AndroidManifest.xml). Then I applied the extra changes for the drawer app and for the most part, that's basically it.
