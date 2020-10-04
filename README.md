#  Time management App

#### By jackson Chaffey 



##### Purpose and Scope

People make plans to get fitter, to read more, to waste less time or to generally make changes to their lives to improve their productivity, but life gets in the way and we often lose focus on what it is we set out to do with our time. The purpose of this app is to provide an accessible solution to the very common problem of time management and priority shuffling. Along with this the app will have a section dedicated to providing a user with helpful tips to encourage and assist productivity without forcing them to detail how much of their time they want to spend doing so. Finally the app will provide a space for the user to write a kind of diary entry, intended as a place to log what they have done for the day to increase visibility of time use. The target audience for this app will be anyone who wants to provide themself with a bit of external accountability and breakdown of their time to give some reminders of how they are spending it as well as providing positive and encouraging ideas for how to do achieve their goals.

To use the app a person would first find it on my Github and install the required ruby framework and gems which are detailed and explained below.

##### Features

Login screen: A pretty basic feature for the app where a password and username are set and provide a kind of 'lock' for the app. Initially this will just be  a preloaded profile with the details shown to the users the plan for this after release is for users to be able to create a profile and save their data to it.

Productivity tracker: The core feature of the app, providing the frame for accountability and time tracking this asks the user how much time they want to spend of their day being productvie in the way of a number of hours and will compare the first entry to the second one to give feedback on successful or unsuccessful goals. It will also feed the user a tip to encourage productibity when they enter a time or dont achieve a goal.

Productivity hints: Meant as another small way to help boost productivity this will either allow the user to recieve a random hint to encourage productivity or a full list of tips to do the same. The intent for this is a more causal approach to helping headspace as it is less pressure and accountability on the user than having the ticking clock of the productivity tracker.

Diary: More of a productivity log than a standard diary, this is intended to be a place where the user can journal how they spent their time in the day to help visibility of time use and highlight how much time can be wasted. It logs the date and time of each entry and allows users to look back on past entries.



##### User interaction brief

Each menu screen of the app will have explicit instruction for how to access each feature at the top of the screen. The majority of the input in this app will be integers, corresponding with different lists of menu items on the screen. Each menu item will also have a simple string that may be entered that best reflects the list item (IE: When returning to the menu screen from anywhere, a user can input 'menu' as their entry to get there instead of just the corresponding integer.). However, this is intended as a backup/hidden feature  and not the main method of navigating. If invalid input is entered by the user, they are shown a screen which tells them they picked incorrectly and need to re-enter their choice before being looped back to the menu they were on.

##### Control Flow

![Control Flow Diagram](controlflow.png)





##### R9 

https://trello.com/b/bs3pxkwT/time-app

##### R10





##### User interaction and Experience.

1. User opens the terminal and enters the directory which stores their copy of time.rb.
2. Using `ruby time.rb` in the terminal will open the program and present the user with the login screen.
3. Following the prompts given they will login and reach the main menu.
4. From here they can choose to use the Productivity tracker, Helpful hints, BLAH or Exit the app with the following inputs. `1 || productivity` ,` 2 || help`,` 3 ||` `diary`, `4 ||exit.`
   1. Once in any of these options there will be detailed prompts on how to input data to use the feature. If a user inputs the wrong data-type they will be shown separate instruction by the app and returned to the previous screen.





