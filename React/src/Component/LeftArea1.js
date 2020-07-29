import React, { Component } from 'react';
import GoogleMapReact from 'google-map-react';
import Container from 'react-bootstrap/Container'
import Row from 'react-bootstrap/Row'
import axios from 'axios';
import pic0 from './wholefood.jpg'
import pic1 from './wholefood0.jpg'
import pic2 from './wholefood1.jpg'
import pic3 from './wholefood2.jpg'
import StorePlace from './StorePlace';
import GooglePhoto from 'react-google-photo';



class LeftArea extends Component {
   constructor() {
     super()
     this.state = {
        index: 0,
      }
  }


  handleChange(event) {
    console.log("LvL Change")
    console.log(event.target.value);
  }
  handleStoreChange(event)
  {
    console.log("Store Change")
    console.log(event.target.value);
    const index = event.target.value
    this.setState({
        index: index,
      });
  }

  storeOption (store) {
    console.log('option')
    console.log(store)
    let options = []
    for (var j = 0; j < store.length; j ++) {
      const option = <option value = {j}>{j + 1}. {store[j].adress}</option>
      options.push(option)
    }
    return options
  }

  storeList() {
   const numStores = 4;
   let storeList = [];
   const store = this.props.data
   const body =
        <div >
          <form>
              <label for="hours" style= {{textAlign: 'left'}}>Time: <b>11:37</b> Check Time Slots: </label>
                <select id="hour" style={{maxWidth: '90%',}} name="hour" size="1" onChange={this.handleLvlChange}>
                  <option value="Select">Select</option>
                  <option value="12:30">12:00</option>
                  <option value="13:00">12:30</option>
                  <option value="13:00">13:00</option>
                  <option value="13:30">13:30</option>
                  <option value="13:00">14:00</option>
                  <option value="13:30">14:30</option>
                </select>
           <label for="stores" style= {{textAlign: 'left'}}>Pick Store for details: </label>
            <select id="hour" name="hour" size="1" onChange={this.handleStoreChange}>
                    <option value="Select">Select Store From List</option>
                    {this.storeOption(store)}
                </select>
             </form>
             <br></br>
           <div style={{textAlign: 'left', lineHeight: "5px"}} key={0} onClick={() => this.clicked(0)}>

                <div style={{display: 'flex',}}><img src={pic0} width='300px' style={{margin: 'auto', opacity: '0.7'}}/></div>

              <p><b>Adress:</b> {store[0]["adress"]} </p>
              <p><b>Phone:</b> {store[0]["phone"]} </p>
              <p><b>Customer in store:</b> {store[0]["numCustomer"]}, <b>Max:</b> {store[0]["maxCustomer"]}</p>
              <p><b>Customer Rating (Google):</b> {store[0]["rating"]} </p>
            </div>
            <div style={{textAlign: 'left', lineHeight: "5px"}} key={1}>
              <div style={{display: 'flex',}}><img src={pic1} width='300px' style={{margin: 'auto', opacity: '0.7'}}/></div>

              <p><b>Adress:</b> {store[1]["adress"]} </p>
              <p><b>Phone:</b> {store[1]["phone"]} </p>
              <p><b>Customer in store:</b> {store[1]["numCustomer"]}, <b>Max:</b> {store[1]["maxCustomer"]}</p>
              <p><b>Customer Rating (Google):</b> {store[1]["rating"]} </p>
            </div>
            <div style={{textAlign: 'left', lineHeight: "5px"}} key={2}>
              <div style={{display: 'flex',}}><img src={pic2} width='300px' style={{margin: 'auto', opacity: '0.7'}}/></div>

              <p><b>Adress:</b> {store[2]["adress"]} </p>
              <p><b>Phone:</b> {store[2]["phone"]} </p>
            <p><b>Customer in store:</b> {store[2]["numCustomer"]}, <b>Max:</b> {store[2]["maxCustomer"]}</p>
          <p><b>Customer Rating (Google):</b> {store[2]["rating"]} </p>
            </div>
            <div style={{textAlign: 'left', lineHeight: "5px"}} key={4}>
              <div style={{display: 'flex',}}><img src={pic3} width='300px' style={{margin: 'auto', opacity: '0.7'}}/></div>

              <p><b>Adress:</b> {store[3]["adress"]} </p>
              <p><b>Phone:</b> {store[3]["phone"]} </p>
              <p><b>Customer in store:</b> {store[3]["numCustomer"]}, <b>Max:</b> {store[3]["maxCustomer"]}</p>
              <p><b>Customer Rating (Google):</b> {store[3]["rating"]} </p>
            </div>
      </div>
   return(body)
  }

  render() {
    let superMarket = this.props.supermarket
    let stores = this.props.data
    return(
      <div>
        <h2>{superMarket}</h2>
        {this.storeList()}
      </div>
    );
  }
}

export default LeftArea;
