import React, { Component } from 'react';
import GoogleMapReact from 'google-map-react';
import Container from 'react-bootstrap/Container'
import Row from 'react-bootstrap/Row'
import axios from 'axios';
import StorePlace from './StorePlace';
import LeftArea from './LeftArea';


class SimpleMap extends Component {
   constructor() {
     super()
     this.state = {
       center: {
          lat: 40.7685526,
          lng: -73.9853753,
        },
        chain: 'Whole Foods Market',
        zoom: 5,
        load: false,
        stores: {},
      }
      this.changeIndex = this.changeIndex.bind(this);
   }

   changeIndex(i) {
     this.setState({
         index(i),
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
          zoom: 14,
          load: true,
          stores: response.data,
        });
      });
      console.log('componentDidMount - After URL')
	}
 /*
  setSingleToolip(display) {
		 const indDisplys = display
		 let depth = 0
		 let DisplayLine = []
		 for (var i = 0; i < indDisplys.length; i++){
			 const ind = indDisplys[i][0]
		   const tmp =  <SingleValueTooltip
		  						yLabel={ind} yAccessor={(d) => d[ind]}
		  						origin={[-40, depth]}/>
			 DisplayLine.push(tmp)
		   depth = depth + 20}
		console.log(DisplayLine)
		return DisplayLine
	}
*/
  getStores() {
    console.log('getStores')
    let StoresDisplay = []
    const stores = this.state.stores['stores']
    console.log(stores)
    for (var i = 0; i < stores.length; i++) {
      let tmp = <StorePlace key={stores[i].id} lat={stores[i].lat} lng={stores[i].lng} text={'A'} rank={stores[i].rank} />
      StoresDisplay.push(tmp)}
    return StoresDisplay
  }

  render() {
    console.log(this.state.load)
    if (!(this.state.load))
      return <h1>Loading...</h1>
     console.log(this.state.center)

    return (
      <div>
        <div style={{width: '25%', float: 'left', display: 'inline'}}>
           <LeftArea data={this.state.stores['stores']} supermarket={this.state.chain} chahgeIndex={() => this.changeIndex(i)}/>
        </div>
        <div style={{height: '100vh', width: '75%', float: 'left', display: 'inline'}}>
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

export default SimpleMap;
