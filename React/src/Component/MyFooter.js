import React, { Component } from 'react';
import GoogleMapReact from 'google-map-react';
import Container from 'react-bootstrap/Container'
import Row from 'react-bootstrap/Row'
import axios from 'axios';
import StorePlace from './StorePlace';


class MyFooter extends Component {
  constructor() {
     super()
   }

  render() {
    return(
      <div>
        <form>
        <div className="radio" style={{float: 'left', display: 'absolut'}}>
          <label>
            <input type="radio" value="option1" checked={true} />
             12:30
          </label>
        </div>
        <div className="radio" style={{float: 'left', display: 'inline'}}>
          <label>
            <input type="radio" value="option2" />
             13:00
          </label>
        </div>
        <div className="radio" style={{float: 'left', display: 'inline'}}>
          <label>
            <input type="radio" value="option3" />
            14:30
          </label>
        </div>
          <div className="radio" style={{float: 'left', display: 'inline'}}>
            <label>
              <input type="radio" value="option1"  />
            15:00
            </label>
          </div>
          <div className="radio" style={{float: 'left', display: 'inline'}}>
            <label>
              <input type="radio" value="option2" />
            15:30
            </label>
          </div>
          <div className="radio" style={{float: 'left', display: 'inline'}}>
            <label>
              <input type="radio" value="option3" />
            16:30
            </label>
        </div>
      </form>
      </div>
    );
  }
}

  export default MyFooter;
