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
