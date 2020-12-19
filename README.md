# My Termianl App - Word Game

# My Termianl App _T1A3

GitHub: https://github.com/shrav-s/shravani-portfolio

Trello board: https://github.com/shrav-s/My-terminal-app

## Table of Contents

Software Development Plan

-Description

-Statement of Purpose and Scope

-Features
-User Interaction and Experience

-Control Flow Diagram- Flow Chart and Control Flow diagram

-Implementation Plan

-Testing

-Installation Instructions

-Related Documents

# Software Development Plan

## Description ##

The Word Game is a fun educational game build for entertainment purpose. It is a command-line interface game built using Ruby.

## Statement of Purpose and Scope ##

The Word Game is a fun game which relieves player of boredom and test your vocabulary knowledge. It is an interactive game where the player is prompted to guess the secret word based on the three clues, which are revealed one at a time.

## What Word Game will do? ##

Word game consists of three secret words per game and the player has three chances to guess the word right. Every secret word has three clues, each revealed with incorrect attempt of the player. The Word Game displays the secret word and one clue for the player to guess. Player earns more points if he guesses the word correct in less number of attempts, that is fewer the number of attempts, higher the score. At the end of each game the players score in the game and his total score is displayed. The player is further presented with an option to either exit or to continue playing a new game.

## Target Audience

The Target audience of the game are word and puzzle lovers, gamers looking for quick, short span games to sort of get relief from boredom.

## How a member of the target audience will use it

The Word Game is command line interface application. The player will need install all the files mentioned in the installation section. Once the necessary files are installed, the player can launch the game by running the executable files in the source document or from the installation section below. The necessary instructions on how to play the game are displayed on the welcome screen. 

## Features

### Player Interface and Player Experience: ### 

I have used the Colorize Gem to break the code visually and to make the screen look visually pleasing.  [Ascii art generator](https://fsymbols.com/generators/carty/) has been used in the welcome screen to display the name of the game; messages when the player guesses the word correctly and at the end of the game congratulating player for completing the game.

### Database/Track Score: ###

 JSON has been used to record and store the Player game records. During the game the program tracks the score of the player based on the number of attempts and at the end of the game the score is recorded in the JSON file against the player name. The total score is displayed to the player at the end of the game. The player can check his score records by choosing **Check Score** Records option from the menu screen.

### Play as another player: ###

 The menu screen provides the player with the option to play as another player. This option allows player to play new game as a new player. When the player chooses to play as another player, a new record is created in the database with a new name.


## player Experience/Interaction ##

Welcome Screen: The welcome screen is displayed when player runs the executable file. The game rules are presented and the player is prompted to enter if he wishe sto continue the game.

![welcome-new screen](docs\\welcome-new.png)

The player is prompted to enter to his name, when he chooses to continue.

![username](docs\username-new.png)

Menu option is displayed, and the game begins when player chooses first menu option.
The screen displays the secret word and frist clue. The player is then prompted to guess the word.

![startgame](docs\menu-new.png)

when the player inputs his guess the program validates teh guess word against the secret word and displays the message accordinly. Program generated second clue where the player guess is wrong.

![wrongguess](docs\wrongguess-new.png)


where the player guesses the correct answer, the program displays the player score based on the number of the attempts and presents second secret word and clue.

![rightguess](docs\rightuess-new.png)

when the player completes the game, program displays the players score and overall game score from user records(JSON).

![endofgame](docs\endofgame-new.png)

Menu option 2 displays on the screen players overall games score.

![option2](docs\option2-new.png)

Menu option 3 redirects the player to the welcome so the player play the game as anew player.

![option3](docs\option3-new.png)

Menu option 4 terminates the program with a simple message to the player.

![option4](docs\option4-new.png)

## Control Flow Diagram ##

### Flow Chart ###

![flowchart](docs\flowchart.jpeg)

### Data flow diagram ###

This data flow diagram represents only three classes - Game class,User class, and Words & Clues class. However during the build process i required another class named User ops class to record and store the players name and score.

![dataflow](docs\dataflow.jpeg)

## Implementation Plan ##

Once I have decided on the Word game terminal application, I have brain-stormed the user stories and requirements for the application.

![trelloboard](docs\userstories.png)

The next step in the build process was designing the flow chart and data flow structures which gave me a clear idea of the classes and possible features i can include in my project.

Creating a Trello board to estimate time and plan and divide the project, keeping in mind the deadline for submission played an important part in the develpment of the application. 

![trelloboard](docs\trello-1.png)

![trelloboard](docs\trelloboard.png)

![trelloboard](docs\trello-2.png)

## Testing ##

Manual testing was done at every step of the build process to make sure the application does'nt crash. I have attempted to write few test cases using rspec but more thorough code is needed to test classes.

## Installation Instructions ##

Requiremments and dependencies of the game

- Intsall [Ruby](https://www.ruby-lang.org/en/documentation/installation/) here and follow the installation instructions.

- Run the following command line instruction to install bundler gem:

``` 
gem install bundler
 ```

- Clone the files from the repository using the following command line instruction:

```
git clone https://github.com/shrav-s/My-terminal-app
```

- Navigate to the src folder using following command

```
cd src
```

- Choose to run the execuatble file from the souce folder to install all required gems.

```
./run.sh
```
Enjoy the game!

## Resources ##

used following links:

ascii art - https://fsymbols.com/generators/carty/

https://stackoverflow.com/

ruby gems - https://rubygems.org/

