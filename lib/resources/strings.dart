// * Intro Page
import 'package:portfolio/models/models.dart';

const List<String> introPageTexts = [
  'Hey visitor! I am...',
  'ANIKATE DE.',
  'DEVELOPER',
  'currently helping people turn their ideas into reality.'
];

// * About Me Section
const String aboutMeMainText = 'ABOUT ME';

const List<String> aboutMeTexts = [
  "I'm a 17 yr old, self taught developer from ",
  'In',
  'd',
  'ia.',
  "I'm a skilled & passionate ",
  'Cross Platform Application Developer',
  ', with significant hands-on-experience with ',
  'Flutter',
  ' & lots of different programming languages.',
  "Fueled by my unending curiosity and thirst for knowledge, I've learnt many technologies and can build production-level apps.\nAll whilst following the best coding norms ",
  ':)',
  'Coding might be on the top of my list, but I also ',
  'LOVE',
  ' listening to music, origami, football & sometimes playing my favourite video games.',
  '(this is me)',
];

// * More Section
const List<String> moreTexts = [
  "I'm currently available for individual projects",
  'LET ME HELP YOU CREATE SOMETHING',
  '`AWESOME`'
];

// * What I Offer Section
const String whatIOfferMainText = 'WHAT I OFFER';
const String whatIOfferText1 =
    "Give me your idea & I'll transform it into a fully functional digital asset.\n\n\nHere are some things I willing to offer -";
const List<String> whatIOfferPointsList = [
  'Cross Platform App Development (with Flutter)\nfor Mobile + Web + Desktop',
  'Native Desktop App Development',
  'UI/UX Design',
  'Backend Development'
];

// * Skills Section
const String skillsMainText = 'SKILLS';

const List<String> skillsTexts = [
  'I can proficiently work with ',
  'both front-end and back-end technologies.',
  'Working with ',
  'Flutter',
  " however, is my niche & I can deliver great things with it.\n\n\nAlongside, you'll find some of my skills.",
];

const String skillSetAText = 'FRONT-END';
const String skillSetBText = 'BACK-END';

const List<String> setASkillsList = ['Flutter', 'Java', 'Python'];

const List<String> setBSkillsList = ['JavaScript', 'Dart', 'SQL'];

// * Portfolio Section
const String portfolioMainText = 'PORTFOLIO';
/*
  OTHER PORTFOLIO RELATED TEXT WILL GO HERE...
*/

// * Get In Touch Section
const String getInTouchMainText = 'GET IN TOUCH';
const String getInTouchText1 =
    'Feel free to drop me an email or contact me via any of my social media handles below.';
const String getInTouchEmail = 'de.anikate@gmail.com';
const String getInTouchBuiltWithText = 'Built with Flutter 3\nby Anikate De';

List<Project> portfolioProjects = [
  Project(
    name: 'Biscuit Beacon',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    skillsLearned: [
      'Flutter',
      'Google Maps',
      'Firebase',
    ],
  ),
  Project(
    name: 'World\'s Best Dad',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    skillsLearned: [
      'Flutter',
      'Node.js REST API',
      'Heroku WebHosting',
    ],
  ),
  Project(
    name: 'Chatty',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
    skillsLearned: [
      'Flutter',
      'Firebase',
      'OAuth 2.0',
    ],
  ),
];
