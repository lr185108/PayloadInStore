import React, {PropTypes, Component} from 'react';
//import shouldPureComponentUpdate from 'react-pure-render/function';

//import {greatPlaceStyle} from './my_great_place_styles.js';

class StorePlace extends Component {
  constructor(props) {
    super(props);
  }

  render() {


    //shouldComponentUpdate = shouldPureComponentUpdate;

    const K_WIDTH = 15;
    const K_HEIGHT = 15;

    let bgcolor = ''
    let icolor = ''
    switch(this.props.rank) {
      case '1':
        bgcolor='#194D33'
        icolor= 'white'
        break;
      case '2':
        bgcolor='#26734D'
        icolor= 'white'
        break;
      case '3':
        bgcolor='#349765'
        icolor= 'white'
        break;
      case '4':
        bgcolor='#3FBB7D'
        icolor= 'white'
        break;
      case '5':
        bgcolor='#51EA9E'
        icolor = 'black'
        break;
  default:
    bgcolor='#51EA9E'
    icolor = 'black'
  }
    console.log('bgcolor')
    console.log(bgcolor)
    console.log('icolor')
    console.log(icolor)
    const greatPlaceStyle = {
  // initially any map object has left top corner at lat lng coordinates
  // it's on you to set object origin to 0,0 coordinates
      position: 'absolute',
      width: K_WIDTH,
      height: K_HEIGHT,
      left: -K_WIDTH / 2,
      top: -K_HEIGHT / 2,
      border: '2px solid black',
      borderRadius: K_HEIGHT,
      backgroundColor: bgcolor,
      textAlign: 'center',
      color: icolor,
      fontSize: 16,
      fontWeight: 'bold',
      padding: 4
    };
    return (
       <div style={greatPlaceStyle}>
          {this.props.rank}
       </div>
    );
  }
}

export default StorePlace;
