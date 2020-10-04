#  Time management App

## By Jackson Chaffey 

### Instructions

1. Download the current version of Ruby (2.7.2 at time of writing) [here](https://www.ruby-lang.org/en/downloads/).

2. Download time.rb from the github repo [here](https://github.com/jacksonchaffey/TimeManagement).

3. In the terminal, navigate to the directory you have stored this download in using the `cd *your directory* ` command.

4. Execute the program using the command `ruby time.rb`

3. You will be asked to log in with a username and password. These are **admin** and **admin**.

4. You are now in the menu screen. Use the numbers 1, 2, 3 and 4 to navigate the menu. (Alternatively on this menu you can use the strings 'productivity', 'help', 'diary' and 'exit' to navigate. This is just a little test feature and not intended for use throughout the app.).

5. The majority of the app takes integers as input, please follow convention accordingly unless instructed otherwise while in the app.

6. To exit out of the app, navigate back to the main menu and select option 4 or 'exit'.


### Purpose and Scope

People make plans to get fitter, to read more, to waste less time or to generally make changes to their lives to improve their productivity, but life gets in the way and we often lose focus on what it is we set out to do with our time. The purpose of this app is to provide an accessible solution to the very common problem of time management and priority shuffling. Along with this the app will have a section dedicated to providing a user with helpful tips to encourage and assist productivity without forcing them to detail how much of their time they want to spend doing so. Finally the app will provide a space for the user to write a kind of diary entry, intended as a place to log what they have done for the day to increase visibility of time use. The target audience for this app will be anyone who wants to provide themself with a bit of external accountability and breakdown of their time to give some reminders of how they are spending it as well as providing positive and encouraging ideas for how to do achieve their goals.

To use the app a potential user would first need find it on my Github and install the required ruby framework explained above.

### Features

Login screen: A pretty basic feature for the app where a password and username are set and provide a kind of 'lock' for the app. Initially this will just be  a preloaded profile with the details shown to the users the plan for this after release is for users to be able to create a profile and save their data to it.

Productivity tracker: The core feature of the app, providing the frame for accountability and time tracking this asks the user how much time they want to spend of their day being productvie in the way of a number of hours and will compare the first entry to the second one to give feedback on successful or unsuccessful goals. It will also feed the user a tip to encourage productibity when they enter a time or dont achieve a goal.

Productivity hints: Meant as another small way to help boost productivity this will either allow the user to recieve a random hint to encourage productivity or a full list of tips to do the same. The intent for this is a more causal approach to helping headspace as it is less pressure and accountability on the user than having the ticking clock of the productivity tracker.

Diary: More of a productivity log than a standard diary, this is intended to be a place where the user can journal how they spent their time in the day to help visibility of time use and highlight how much time can be wasted. It logs the date and time of each entry and allows users to look back on past entries.



### User interaction brief

The menus of the app are intended to be navigated by inputting a number reflecting one of the options presented to the user. Following this there will either be a prompt on what kind of input the user should enter, or another menu -also to be navigated with numbers- to choose options from. A user that puts the wrong data-type into the input field will be met with a screen telling them exactly this. They will then be returned to the previous menu they were on and asked to select again from the available options. If no data is put in, the app will sit where it currently is and excecute no further code.

The only feature of the app that has some level confustion is the productivity tracker. Its initial purpose is to ask you how long you want to be productive in a day, taking the number you enter and storing it in an array (if the app dictates the number is reasonable). The user is then returned to the main menu to explore the rest of the app. On second visit to the productivity tracker the user will be asked how they actually managed to do that day. It will then compare the values entered and give the user some feedback on their performance for the day. Following this, both pieces of entered data are discarded and the feature -if accessed again- will perform as if it were the first interaction with the user.

### Control Flow

![Control Flow Diagram](https://github.com/jacksonchaffey/TimeManagement/blob/master/img/ControlFlow.png)



### Implementation Plan

The planning of this app utilised a Trello board which can be found [here.](https://trello.com/b/bs3pxkwT/time-app)
Alternately, there is a screenshot provided below which shows the majority of the board.
![Trello screenshot for app design](https://github.com/jacksonchaffey/TimeManagement/blob/master/img/TrelloShot.png)












