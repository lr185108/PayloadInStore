import React, { Component } from 'react';
import GoogleMapReact from 'google-map-react';
import Container from 'react-bootstrap/Container'
import Row from 'react-bootstrap/Row'
import googlePic from './Connection.PNG'
import adress from './adress.PNG'
import watch from './watch.PNG'
import axios from 'axios';
import pic0 from './wholefood.jpg'
import pic1 from './wholefood0.jpg'
import pic2 from './wholefood1.jpg'
import pic3 from './wholefood2.jpg'
import place from './adress.PNG'
import crowd from './croud.png'
import StorePlace from './StorePlace';
import GooglePhoto from 'react-google-photo';



class LeftArea extends Component {
   constructor() {
     super()
     this.state = {
        storeIndex: 0,
        }
  }
  /*
  handleChange(event) {
    console.log('Lvl Change')
    console.log(event.target.value)
    var val = event.target.value
    var change = this.props.changeIndex;
    let a = (val) => change(val)
  }
  */

  getColor(rank) {
    console.log("rank")
    console.log(rank)
    let bgcolor='#00FF00'
    let icolor= 'black'
    switch(rank) {
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
        icolor = 'black'
        break;
  default:
     bgcolor='#00FF00'
     icolor= 'black'
   }
   return bgcolor


  }

  getPicture(mod) {
    let body = <div style={{display: 'flex'}}>
                   <img src={pic0} width='300px' style={{margin: 'auto', opacity: '0.7'}}/>
               </div>
    switch (mod) {
      case 0:
        body = <div style={{display: 'flex'}}>
                       <img src={pic0} width='300px' style={{margin: 'auto', opacity: '0.7'}}/>
               </div>
        break
      case 1:
        body = <div style={{display: 'flex'}}>
                   <img src={pic1} width='300px' style={{margin: 'auto', opacity: '0.7'}}/>
               </div>
        break
      case 2:
        body = <div style={{display: 'flex'}}>
                   <img src={pic0} width='300px' style={{margin: 'auto', opacity: '0.7'}}/>
               </div>
        break
      default:
        body = <div style={{display: 'flex'}}>
                  <img src={pic0} width='300px' style={{margin: 'auto', opacity: '0.7'}}/>
              </div>
        break
      }
    return(body)

  }

  displayStore() {
    const store = this.props.data
    const lvl = this.props.lvl
    console.log(lvl)
    const storeIndex = this.props.storeIndex

    const mod = storeIndex % 4
    // set store picture visability
    const curCust = lvl["numCustomer"]
    const prec = lvl["pre"]
    const rank = lvl["rank"]
    const bgcolor = this.getColor(rank)
    const storeDetails =
      <div style={{textAlign: 'left', color: '#5F78F9'}} key={1}>
        <div style={{display: 'flex',}}><img src={googlePic} width='300px' style={{margin: 'auto', opacity: '0.7'}}/></div>
        <div style={{display: 'flex',}}><img src={adress} width='30px' style={{margin: 'LeftArea()', opacity: '0.7'}}/>{store["adress"]}</div>
        <div style={{display: 'flex',}}><img src={watch} width='30px' style={{margin: 'LeftArea()', opacity: '0.7'}}/>Open Till 22:00</div>
        <div style={{backgroundColor: bgcolor}}>
            <h3 style={{color: 'black'}}>Capacity Precentage: {prec}%</h3>
        </div>
        <div style={{lineHeight: '4px'}}>
         <p><b>Number of Customer In Store:</b> {store["numCustomer"]} </p>
         <p><b>Size (Square Meater):</b> {store["squareMeter"]} </p>
         <p><b>Max Capacily:</b> {store["maxCustomer"]} </p>
         <p><b>Avrage Waiting Queue Line:</b> 3 Minutes</p>
         <p><b>Avrage Queue Line:</b> 1 Customer</p>
         <p><b>Customer Rating (Google):</b> {store["rating"]} </p>
        </div>
     </div>

    return storeDetails
  }


  render() {
    const superMarket = this.props.supermarket
    let stores = this.props.data
    return(
      <div>
        <h2>{superMarket}</h2>
        {this.displayStore()}
      </div>
    );
  }
}

export default LeftArea;
