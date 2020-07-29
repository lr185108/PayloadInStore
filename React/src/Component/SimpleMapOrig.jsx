import React, { Component } from 'react';
import GoogleMapReact from 'google-map-react';
import Container from 'react-bootstrap/Container'
import controllable from 'react-controllables';
import Row from 'react-bootstrap/Row'

import axios from 'axios';
import StorePlace from './StorePlace.jsx';
import LeftArea from './LeftArea';
import shouldPureComponentUpdate from 'react-pure-render/function';


class SimpleMapOrig extends Component {

   shouldComponentUpdate = shouldPureComponentUpdate;

   constructor() {
     super()
     document.title="Store Picker"
     this.state = {
       center: {
          lat: 40.7685526,
          lng: -73.9853753,
        },
        chain: 'Whole Foods Market',
        Lvlindex: 0,
        StoreIndex: 0,
        zoom: 5,
        load: false,
        stores: {},
      }

      this.changeLvlIndex = this.changeLvlIndex.bind(this);
      this.changeStoreIndex = this.changeStoreIndex.bind(this);
   }

   changeLvlIndex(event) {
     console.log('LvLindex')
     console.log(event.target.value)
     const i = event.target.value
     this.setState({
         Lvlindex: i,
       });
   }

   changeStoreIndex(event) {
     console.log('Storeindex')
     console.log(event.target.value)
     const i = event.target.value
     this.setState({
         StoreIndex: i,
       });
   }



   componentDidMount() {
     console.log('componentDidMount')
      console.log('componentDidMount - Before set State')

      console.log('componentDidMount - URL')
      let url;
      let ret;
      url = 'http://127.0.0.1:5003/stores?alt=' + this.state.center.lat + '&lng=' + this.state.center.lng + '&chain=' + this.state.chain
      console.log('url')
      console.log(url)
      axios.get(url).then(response => {
      console.log(response)
      console.log(response.data)
      this.setState({
          zoom: 15,
          load: true,
          stores: response.data,
        });
      });
      console.log('componentDidMount - After URL')
	}

  storeOption (store) {
    console.log('option')
    console.log(store)
    let options = []
    for (var j = 0; j < store.length; j ++) {
      const option = <option key={j} value = {j}>{j + 1}. {store[j].adress}</option>
      options.push(option)
    }
    return options
  }

  getStores() {
    console.log('getStores')
    let StoresDisplay = []
    const stores = this.state.stores['stores']
    console.log(stores)

    for (var i = 0; i < stores.length; i++) {

      let tmp = <StorePlace
                          key={stores[i].id}
                          lat={stores[i].lat}
                          lng={stores[i].lng}
                          data={stores[i]}
                          lvl={stores[i].Levels[this.state.Lvlindex].numCustomer}
                          pre={stores[i].Levels[this.state.Lvlindex].pre}
                          rank={stores[i].Levels[this.state.Lvlindex].rank}
                          text={i+1}
                          />
      StoresDisplay.push(tmp)}
    return StoresDisplay
  }

  render() {
    //console.log(this.state.load)
    if (!(this.state.load))
      return <h1>Loading...</h1>
     //console.log(this.state.center)

    const stores = this.state.stores['stores']
    console.log(this.state.stores)
    console.log(this.state.StoreIndex)
    const store = stores[this.state.StoreIndex]

    return (
      <div>
        <div style={{width: '25%', float: 'left', display: 'inline'}}>
           <LeftArea data = {store}
                     supermarket={this.state.chain}
                     lvl={store.Levels[this.state.Lvlindex]}
                     storeIndex= {this.state.Storeindex} />
        </div>

        <div style={{height: '100vh', width: '75%', float: 'left', display: 'inline'}}>
           <form>
            <label for="hours" style= {{textAlign: 'left'}}>Time: <b>11:37</b> Check Time Slots: </label>
          <select id="hour" style={{maxWidth: '90%',}} name="hour" onChange={this.changeLvlIndex}>
                <option key="1" value="0">11:30</option>
                <option key="2" value="1">12:00</option>
                <option key="3" value="2">12:30</option>
                <option key="4" value="3">13:00</option>
                <option key="5" value="4">13:30</option>
                <option key="6" value="5">14:00</option>
                <option key="7" value="6">14:30</option>
              </select>

              <label for="stores">Pick Store for details: </label>
            <select id="selStore" style={{maxWidth: '80%',}} name="selStore"  onChange={this.changeStoreIndex}>
                      {this.storeOption(stores)}
                </select>
              </form>
            <GoogleMapReact
              bootstrapURLKeys={{ key: 'AIzaSyAZMfE29aGsllXIXARu_YA8v0y6e7cbA3g' }}
              defaultCenter={this.state.center}
              defaultZoom={13}
              >
              {this.getStores()}
            </GoogleMapReact>


        </div>
        <div style={{clear: 'both'}}/>
    </div>
    );
  }
}

export default SimpleMapOrig;

/*
{this.getStores()}
<form>
  <label for="hours" style= {{textAlign: 'left'}}>Time: <b>11:37</b> Check Time Slots: </label>
    <select id="hour" style={{maxWidth: '90%',}} name="hour" size="1" value={this.value} onChange={this.changeIndex}>
      <option value="0">11:30</option>
      <option value="1">12:00</option>
      <option value="2">12:30</option>
      <option value="3">13:00</option>
      <option value="4">13:30</option>
      <option value="5">14:00</option>
      <option value="6">14:30</option>
    </select>
  </form>
*/
