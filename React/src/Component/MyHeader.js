import React, { Component } from 'react';
import GoogleMapReact from 'google-map-react';
import Container from 'react-bootstrap/Container'
import Row from 'react-bootstrap/Row'
import axios from 'axios';
import StorePlace from './StorePlace';


class MyHeader extends Component {
   constructor() {
     super()
  }

  render() {
    return(
      <div>
       <h1>XXX Store picker</h1>
      </div>
    );
  }
}

export default MyHeader;
