import React, { Component } from 'react';
import GoogleMapReact from 'google-map-react';
import Container from 'react-bootstrap/Container'
import Row from 'react-bootstrap/Row'
import axios from 'axios';
import StorePlace from './StorePlace';


class SimpleMap extends Component {
   constructor() {
     super()
     this.state = {
       center: {
          lat: 32.0879122,
          lng: 34.7272057,
        },
        zoom: 5,
        load: false,
        stores: {},
      }
   }

   componentDidMount() {
     console.log('componentDidMount')
     var center = {
       lat: 32.0879122,
       lng: 34.7272057,
      }
      console.log('componentDidMount - Before set State')

      console.log('componentDidMount - URL')
      let url;
      let ret;
      url = 'http://127.0.0.1:5003/stores'
      axios.get(url).then(response => {
      console.log(response)
      console.log(response.data)
      this.setState({
          center: center,
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
      console.log(stores[i].lat)
      console.log(stores[i].lng)
      console.log(stores[i].rank)
      let tmp = <StorePlace lat={stores[i].lat} lng={stores[i].lng} text={'A'} rank={stores[i].rank} />
      StoresDisplay.push(tmp)}
    return StoresDisplay
  }

  render() {
    console.log(this.state.load)
    if (!(this.state.load))
      return <h1>Loading...</h1>
    var center = {
      lat: 32.085814,
      lng: 34.7724783,
     }
     console.log(this.state.center)

    return (
      // Important! Always set the container height explicitly
     <div>
      <Container>
        <Row>
        <h1> Super Sal Store picker </h1>
        </Row>
        <Row>
        <div style={{ height: '100vh', width: '100%' }}>
        <GoogleMapReact
            bootstrapURLKeys={{ key: 'AIzaSyAZMfE29aGsllXIXARu_YA8v0y6e7cbA3g' }}
            defaultCenter={center}
            defaultZoom={14}
            >
        {this.getStores()}
        </GoogleMapReact>
        </div>
        </Row>
        </Container>
      </div>
    );
  }
}

export default SimpleMap;

//<div style={{ height: '100vh', width: '100%' }}>
