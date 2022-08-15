import 'package:flutter/material.dart';
import 'models/trip.dart';
import 'models/categorie.dart';

const Categories_data = const [
  Category(
    id: 'c1',
    title: 'Mountains',
    imageUrl:
        'https://images.unsplash.com/photo-1575728252059-db43d03fc2de?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTh8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=',
  ),
  Category(
    id: 'c2',
    title: 'Lakes',
    imageUrl:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c3',
    title: 'Beaches',
    imageUrl:
        'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c4',
    title: 'Deserts',
    imageUrl:
        'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  ),
  Category(
    id: 'c5',
    title: 'Historic Cities',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/20141114-_DSC0003-3_%2815265143694%29.jpg/1280px-20141114-_DSC0003-3_%2815265143694%29.jpg',
  ),
  Category(
    id: 'c6',
    title: 'Hammamat',
    imageUrl:
        'https://i02.appmifile.com/images/2020/02/22/7f92e10f-803d-4ffa-9d8b-883b5636e662.jpg',
  ),
];
const Trips_data = const [
  Trip(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Chilia mountains',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://www.elwatan.com/wp-content/uploads/2019/01/Sans-titre-1-1.jpg',
    duration: 2,
    activities: [
      'Parachuting',
      'Mountaineering',
      'Rock climbing',
    ],
    program: ['Do chwaaa at lunch', 'Enjoy the nature with family'],
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'Lella Khedidja mounatains',
    tripType: TripType.Exploration,
    season: Season.Winter,
    imageUrl:
        'https://babzman.com/wp-content/uploads/2016/06/Lalla-Khadidja.jpg',
    duration: 3,
    activities: ['Hiking', 'Caving', 'Horse Riding'],
    program: ['Go to hiking', 'Go to Caving', 'Visit the Kabyle places'],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'Yemma Gouraya mountains',
    tripType: TripType.Recovery,
    season: Season.Winter,
    imageUrl:
        'https://www.thecasbahpost.com/wp-content/uploads/2016/12/Gouraya.jpg',
    duration: 2,
    activities: [
      'Visiting archaeological sites',
      'Enjoying the beatiful views'
    ],
    program: [
      'Go to the port oppsite the mountain',
      'Take a tour around the mountain '
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm4',
    categories: ['c2'],
    title: 'the black lake',
    tripType: TripType.Activities,
    season: Season.Spring,
    imageUrl:
        'https://i1.wp.com/wildwildworld.net.ua/sites/default/files/BlueLakeMountGambier.jpg',
    duration: 2,
    activities: [
      'Get on the water of the lake',
      ' Walk and cycle around the lake'
    ],
    program: [
      'Get on the water of the lake',
      ' Walk and cycle around the lake'
    ],
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm5',
    categories: ['c2'],
    title: 'lake Dhaya',
    tripType: TripType.Activities,
    season: Season.Autumn,
    imageUrl:
        'https://i.pinimg.com/564x/45/9f/f5/459ff57919240d00681a3b6bfb1a52db.jpg',
    duration: 2,
    activities: [
      'Get on the water of the lake',
      ' Walk and cycle around the lake',
      'Eat lunch '
    ],
    program: [
      'Get on the water of the lake',
      ' Walk and cycle around the lake',
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'The Aguelmin lake',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/9/92/The_Aguelmim_Lake%2C_Tikjda%2C_Algeria.jpg/1200px-The_Aguelmim_Lake%2C_Tikjda%2C_Algeria.jpg',
    duration: 2,
    activities: [
      'Get on the water of the lake',
      ' Walk and cycle around the lake'
    ],
    program: [
      'Get on the water of the lake',
      ' Walk and cycle around the lake'
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'Jijel Beach',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://www.milleworld.com/wp-content/uploads/2020/02/algerianbeaches1-780x585.jpg',
    duration: 6,
    activities: [
      'Play on the Boardwalk',
      'Play Frisbee',
      'Go Hiking',
      'Have a Picnic',
      'Go Fishing',
      'Look for Seashells'
    ],
    program: [
      'Play on the Boardwalk',
      'Play Frisbee',
      'Go Hiking',
      'Have a Picnic',
      'Go Fishing',
      'Look for Seashells'
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'Sidi Fredj Beach',
    tripType: TripType.Recovery,
    season: Season.Summer,
    imageUrl:
        'https://www.milleworld.com/wp-content/uploads/2020/02/algerianbeaches4.jpg',
    duration: 6,
    activities: [
      'Play on the Boardwalk',
      'Play Frisbee',
      'Go Hiking',
      'Have a Picnic',
      'Go Fishing',
      'Look for Seashells'
    ],
    program: [
      'Play on the Boardwalk',
      'Play Frisbee',
      'Go Hiking',
      'Have a Picnic',
      'Go Fishing',
      'Look for Seashells'
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Trip(
    id: 'm9',
    categories: [
      'c3',
    ],
    title: 'Ain Achir Beach',
    tripType: TripType.Exploration,
    season: Season.Summer,
    imageUrl:
        'https://www.milleworld.com/wp-content/uploads/2020/02/algerianbeaches5-780x435.jpg',
    duration: 6,
    activities: [
      'Play on the Boardwalk',
      'Play Frisbee',
      'Go Hiking',
      'Have a Picnic',
      'Go Fishing',
      'Look for Seashells'
    ],
    program: [
      'Play on the Boardwalk',
      'Play Frisbee',
      'Go Hiking',
      'Have a Picnic',
      'Go Fishing',
      'Look for Seashells'
    ],
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Trip(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'Tassili Sahara',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/-%D8%AA%D9%8A%D9%86%D8%A7%D9%83%D8%A7%D8%B4%D8%A7%D9%83%D9%8A%D8%B1-_%D8%A7%D9%84%D8%AD%D8%B6%D9%8A%D8%B1%D8%A9_%D8%A7%D9%84%D9%88%D8%B7%D9%86%D9%8A%D8%A9_%D9%84%D8%B7%D8%A7%D8%B3%D9%8A%D9%84%D9%8A_%D8%A7%D9%84%D9%87%D9%82%D8%A7%D8%B1_-_%D8%AA%D8%A7%D9%85%D9%86%D8%B1%D8%A7%D8%B3%D8%AA_-_%D8%A7%D9%84%D8%AC%D8%B2%D8%A7%D8%A6%D8%B1.jpg/1200px--%D8%AA%D9%8A%D9%86%D8%A7%D9%83%D8%A7%D8%B4%D8%A7%D9%83%D9%8A%D8%B1-_%D8%A7%D9%84%D8%AD%D8%B6%D9%8A%D8%B1%D8%A9_%D8%A7%D9%84%D9%88%D8%B7%D9%86%D9%8A%D8%A9_%D9%84%D8%B7%D8%A7%D8%B3%D9%8A%D9%84%D9%8A_%D8%A7%D9%84%D9%87%D9%82%D8%A7%D8%B1_-_%D8%AA%D8%A7%D9%85%D9%86%D8%B1%D8%A7%D8%B3%D8%AA_-_%D8%A7%D9%84%D8%AC%D8%B2%D8%A7%D8%A6%D8%B1.jpg',
    duration: 4,
    activities: ['quad biking', 'stargazing', 'camping', 'trekking'],
    program: ['quad biking', 'stargazing', 'camping', 'trekking'],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm11',
    categories: ['c4'],
    title: 'Hoggar Sahara',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://i.pinimg.com/564x/82/85/16/8285166a0e87a20b4e667cd5f1ccaa4a.jpg',
    duration: 4,
    activities: ['quad biking', 'stargazing', 'camping', 'trekking'],
    program: ['quad biking', 'stargazing', 'camping', 'trekking'],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm12',
    categories: [
      'c4',
    ],
    title: 'Asskrem Sahara',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl: 'https://img.ev.mu/images/attractions/85/960x640/1180.jpg',
    duration: 4,
    activities: [
      'quad biking',
      'stargazing',
      'camping',
      'trekking',
      'Enjoy the sunset'
    ],
    program: ['quad biking', 'stargazing', 'camping', 'trekking'],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm13',
    categories: [
      'c5',
    ],
    title: 'Taghit Telemcen',
    tripType: TripType.Activities,
    season: Season.Spring,
    imageUrl:
        'https://img.theculturetrip.com/1440x/smart/images/56-3933514-1440525431e8d9186210cf4866a2aecb28b51ed6cf.jpg',
    duration: 3,
    activities: [
      'Visit the archaelogical sites',
      'A walking tour',
      'Visit Telemcen',
    ],
    program: [
      'Visit the archaelogical sites',
      'A walking tour',
      'Visit Telemcen',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm14',
    categories: [
      'c5',
    ],
    title: 'Constantine',
    tripType: TripType.Activities,
    season: Season.Spring,
    imageUrl:
        'https://img.theculturetrip.com/1440x/smart/wp-content/uploads/2015/09/15677767044_68e368090c_h.jpg',
    duration: 3,
    activities: [
      'Emir Abdelkader Mosquee',
      'Pont Sidi M’Cid ',
      'Monument Aux Morts'
    ],
    program: [
      'Emir Abdelkader Mosquee',
      'Pont Sidi M’Cid ',
      'Monument Aux Morts'
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm15',
    categories: [
      'c5',
    ],
    title: 'Royal Mausoleum of Mauretania',
    tripType: TripType.Activities,
    season: Season.Spring,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/20141114-_DSC0003-3_%2815265143694%29.jpg/1280px-20141114-_DSC0003-3_%2815265143694%29.jpg',
    duration: 1,
    activities: [
      'Exploring Royal Mausoleum of Mauretania',
    ],
    program: [
      'Exploring Royal Mausoleum of Mauretania',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm16',
    categories: [
      'c6',
    ],
    title: 'Hemmem Debegh Guelma',
    tripType: TripType.Activities,
    season: Season.Autumn,
    imageUrl:
        'https://i02.appmifile.com/images/2020/02/22/7f92e10f-803d-4ffa-9d8b-883b5636e662.jpg',
    duration: 2,
    activities: ['Bathing in the hot spring', 'Exploring Guelma'],
    program: [
      'Bathing in the hot spring',
      'Exploring Guelma',
    ],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Trip(
    id: 'm17',
    categories: [
      'c6',
    ],
    title: 'Hemmeme Melouen Blida ',
    tripType: TripType.Activities,
    season: Season.Winter,
    imageUrl:
        'https://media-cdn.tripadvisor.com/media/photo-s/0c/f1/5b/35/piscine.jpg',
    duration: 2,
    activities: ['Bathing in the hot spring', 'Exploring Blida'],
    program: ['Bathing in the hot spring', 'Exploring Blida'],
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
];
