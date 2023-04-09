//TODO: Step 6 - import the story.dart file into this file.
import 'story.dart';

//TODO: Step 5 - Create a new class called StoryBrain.
class StoryBrain{

//TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.
List<Story> _storyData = [
  Story(
     storyTitle:
     'One day, it is raining lightly outside, but you must go out because of certain things, will you choose to bring an umbrella or just go out?',
      choice1: 'Take an umbrella out, I\'m afraid I\'ll catch a cold if I get wet.',
      choice2: 'Of course it\'s straight out the door, just a little rain.'),

  Story(
      storyTitle: 'When you are walking on the road and you meet a cat, you will?',
      choice1: 'Ignore it and keep going.',
      choice2: 'Stop and petting the cat.'),
  Story(
      storyTitle:
      'When you are done with your things, do you choose to go to a restaurant or a cafe for lunch?',
      choice1: 'Of course I\'ll go to the cafe, it\'s quiet and relaxing.',
      choice2: 'Restaurants, because of the wide selection of dishes.'),
  Story(
      storyTitle:
      'Congratulations on your day of healing! 0v0',
      choice1: 'Restart',
      choice2: ''),
  Story(
      storyTitle:
      'You spent the day without incident.',
      choice1: 'Restart',
      choice2: ''),
  Story(
      storyTitle:
      'You caught a cold from the rain •﹏•',
      choice1: 'Restart',
      choice2: ''),
];

//TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TODO: Step 8 - Create a method called getStory() that returns the first storyTitle from _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

//TODO: Step 11 - Create a method called getChoice1() that returns the text for the first choice1 from _storyData.
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

//TODO: Step 12 - Create a method called getChoice2() that returns the text for the first choice2 from _storyData.
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 16 - Create a property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.
  int _storyNumber = 0;

//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.
  void nextStory(int choiceNumber) {

//TODO: Step 20 - Refer to the story plan that is attached

//TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.
  //When user is on story0 and they chose choice1, the story should progress to story2.
  if (choiceNumber == 1 && _storyNumber == 0) {
  _storyNumber = 2;
  } else if (choiceNumber == 2 && _storyNumber == 0) {
  _storyNumber = 1;
  } else if (choiceNumber == 1 && _storyNumber == 1) {
  _storyNumber = 2;
  } else if (choiceNumber == 2 && _storyNumber == 1) {
  _storyNumber = 3;
  } else if (choiceNumber == 1 && _storyNumber == 2) {
  _storyNumber = 5;
  } else if (choiceNumber == 2 && _storyNumber == 2) {
  _storyNumber = 4;
  }

//TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
  else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
    restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}