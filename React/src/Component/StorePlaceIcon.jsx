import React, {PropTypes, Component} from 'react';
import { Icon } from '@iconify/react'
import locationIcon from '@iconify/icons-mdi/map-marker'
import shouldPureComponentUpdate from 'react-pure-render/function';
import PageVisibility from 'react-page-visibility';
//import shouldPureComponentUpdate from 'react-pure-render/function';

//import {greatPlaceStyle} from './my_great_place_styles.js';

class StorePlace extends Component {

  shouldComponentUpdate = shouldPureComponentUpdate;

  constructor(props) {
    super(props);
    this.state = {
      rotate: false,
    }
    document.title="Store Picker"

    this.handleClick = this.handleClick.bind(this);

  }



    handleClick = isVisible => {
        this.setState({ rotate: !isVisible });
    }
  render() {
    const store = this.props.data
    const show = this.state.show

    console.log('rank')
    console.log(this.props.rank)


    const K_WIDTH = 15;
    const K_HEIGHT = 15;

    let bgcolor = ''
    let icolor = ''
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
        icolor= '#FF8C00'
        break;
      case 5:
        bgcolor='#FF0000'
        icolor ='#FF0000'
        break;
  default:
    bgcolor='#51EA9E'
    icolor = 'black'
  }

    return (
          <div lat={this.props.lat} lng={this.props.lng} style={{lineHeight: '4px'}}>
            <Icon lat={this.props.lat} lng={this.props.lng} icon={locationIcon} className="pin-icon" width="25px" color={bgcolor} align="center" style={{float: 'left'}}/>
            <div lat={this.props.lat} lng={this.props.lng} width="200px" style={{float: 'left'}}>
               <PageVisibility onClick={this.handleClick}>
                  <p style={{color: icolor, fontSize: "15px", float: 'left'}}><b>{this.props.text}</b></p>
               </PageVisibility>
            </div>
            <div style={{clear: 'both'}}/>
          </div>
    );
  }
}

export default StorePlace;
