import React, {PropTypes, Component} from 'react';
//import { Icon } from '@iconify/react'
import locationIcon from '@iconify/icons-mdi/map-marker'
import shouldPureComponentUpdate from 'react-pure-render/function';
//import shouldPureComponentUpdate from 'react-pure-render/function';

//import {greatPlaceStyle} from './my_great_place_styles.js';

class StorePlace extends Component {

  shouldComponentUpdate = shouldPureComponentUpdate;

  constructor(props) {
    super(props);
    this.state = {
      show: false,
    }
    document.title="Store Picker"

    this.handleClick = this.handleClick.bind(this);

  }

  handleClick() {
    console.log("Click")
    const show = this.state.show
    this.setState({
        show: !show,
      });

  }
  render() {
    const store = this.props.data
    const show = this.state.show

    console.log('rank')
    console.log(this.props.rank)

    let icolor = ''
    let bgcolor =''
    //console.log('rank')
    //console.log(rank)
    switch(this.props.rank) {
      case 1:
        bgcolor='#00FF00'
        icolor= 'black'
        break;
      case 2:
        bgcolor='#32CD32'
        icolor= 'black'
        break;
      case 3:
        bgcolor='#FFD700'
        icolor= 'black'
        break;
      case 4:
        bgcolor='#FF8C00'
        icolor= 'black'
        break;
      case 5:
        bgcolor='#FF0000'
        icolor ='black'
        break;
  default:
    bgcolor='#51EA9E'
    icolor = 'black'
  }
  const greatPlaceStyle = {
  // initially any map object has left top corner at lat lng coordinates
  // it's on you to set object origin to 0,0 coordinates
    position: 'absolute',
    width: 20,
    height: 20,
    left: -20 / 2,
    top: -20 / 2,
    border: '2px solid black',
    borderRadius: 20,
    backgroundColor: bgcolor,
    textAlign: 'center',
    color: icolor,
    fontSize: 16,
    fontWeight: 'bold',
    padding: 4
  };

    return (
          <div  >
               <p style={greatPlaceStyle}><b>{this.props.text}</b></p>
            </div>
    );
  }
}

export default StorePlace;

/*
//console.log('bgcolor')
//console.log(bgcolor)
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

const greatPlaceStyleHover = {
// initially any map object has left top corner at lat lng coordinates
// it's on you to set object origin to 0,0 coordinates
  position: 'absolute',
  width: K_WIDTH,
  height: K_HEIGHT,
  left: -K_WIDTH / 2,
  top: -K_HEIGHT / 2,
  border: '10px solid black',
  borderRadius: K_HEIGHT,
  backgroundColor: '#D82D3B',
  textAlign: 'center',
  color: icolor,
  fontSize: 16,
  fontWeight: 'bold',
  padding: 4
};*/
