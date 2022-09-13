// * Intro Page
import 'package:portfolio/models/models.dart';

const String githubLink = 'https://github.com/Anikate-De';

const String appName = 'Anikate De • Portfolio';

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

// * Get In Touch Section
const String getInTouchMainText = 'GET IN TOUCH';
const String getInTouchText1 =
    'Feel free to drop me an email or contact me via any of my social media handles below.';
const String getInTouchEmail = 'de.anikate@gmail.com';
const String getInTouchBuiltWithText = 'Built with Flutter 3\nby Anikate De';

List<Project> portfolioProjects = [
  Project(
    name: 'Biscuit Beacon',
    description: [
      'I am the Co-founder and App Developer at Biscuit Beacon, the one-and-only digital platform for dog owners that lets you make your walking sessions more enjoyable by notifying you about nearby community treat jars, water bowls, bag dispensers and more! Check out the app in the stores (in review, coming soon!) and ',
      'biscuitbeacon.com',
      '',
    ],
    skillsLearned: [
      'Flutter',
      'Google Maps',
      'Firebase',
      'JavaScript',
      'Cloud Functions'
    ],
    url: 'https://www.biscuitbeacon.com',
    asset: 'assets/images/me.png',
  ),
  Project(
    name: 'DART RUNNER BOT',
    description: [
      'The FIRST EVER Discord bot which lets you run Dart code snippets directly via a message and get the output in an instant.\nWant to share the output of your Dart code, explain a snippet of code to someone with real-time execution, or just have fun with print statements? The Dart Runner Bot is here to the rescue.',
      '',
      '',
    ],
    skillsLearned: [
      'Dart',
      'Server-Side',
      'Docker',
      'Isolates & Processes',
      'Nyxx Library'
    ],
    asset: 'assets/images/me.png',
  ),
  Project(
    name: 'PHI CHAT',
    description: [
      'Talk to your friends and family just by using their email IDs. Communication happens via Conversations. Set a nice photo, and a catchy name and add as many people as you want. You can even have multiple conversations with the same person!\nInvite people to your conversation in a hassle-free way, with a QR or Text Code.',
      '',
      '',
    ],
    skillsLearned: [
      'Flutter',
      'Firebase',
      'OAuth 2.0',
      'Gestures',
    ],
    asset: 'assets/images/phi-chat.png',
  ),
  Project(
    name: 'World\'s Best Dad',
    description: [
      'A fun cross-platfrom app to browse through hundreds of \'Dad Jokes\' or puns. Made with Flutter, this app employs Provider State Management and perfectly coordinated use of SharedPreferences. It is powered by the ',
      'Joke API',
      ', also created by me.',
    ],
    skillsLearned: [
      'Flutter',
      'Provider',
      'Responsive Design',
      'Node.js REST API',
      'Heroku WebHosting',
    ],
    url: 'https://github.com/Anikate-De/joke-api',
    asset: 'assets/images/worlds-best-dad.png',
  ),
  Project(
    name: 'Micro-AI',
    description: [
      'A voice recognition-based GUI personal assistant that can be used to execute simple tasks and reply to questions.\nGet the latest news report, and articles right from Wikipedia, manage a To-Do list, get questions answered, take screenshots, and so much more!',
      '',
      '',
    ],
    skillsLearned: [
      'Python',
      'MySQL',
      'Tkinter',
      'TTS',
      'WolframAlpha',
    ],
    asset: 'assets/images/me.png',
  ),
];
