import React from 'react';

import {Map, InfoWindow, Marker, GoogleApiWrapper} from 'google-maps-react';
import {GoogleMapReact} from 'google-maps-react';

const AnyReactComponent = ({ text }) => <div>{text}</div>;

export class MapContainer extends React.Component {
  constructor() {
    super()
    this.state = {
      initialPosition: {
        latitude: 0,
        longitude: 0,
        latitudeDelta: 0,
        longitudeDelta: 0,
      },
      load: false,
    }
  }

  componentDidMount() {
    console.log('componentDidMount')
    var initialRegion = {
        latitude: '32.07',
        longitude: '34.78',
        latitudeDelta: 3,
        longitudeDelta: 3,
      }
      console.log('componentDidMount - Before set State')
      this.setState({initialPosition: initialRegion,
                     load: true})
  }

  render() {
    if (!(this.state.load)) {
      return <h1>Loading</h1>
    }
    return (
      // Important! Always set the container height explicitly
      <div style={{ height: '100vh', width: '70%' }}>
        <GoogleMapReact
          bootstrapURLKeys={{ key: 'AIzaSyAZMfE29aGsllXIXARu_YA8v0y6e7cbA3g' }}
          defaultCenter={this.props.center}
          defaultZoom={5}
        >
          <AnyReactComponent
            lat={this.state.initialPosition.latitude}
            lng={this.state.initialPosition.longitud}
            text="My Marker"
          />
        </GoogleMapReact>
      </div>
    );
  }
}

export default GoogleApiWrapper({
  apiKey:  'AIzaSyAZMfE29aGsllXIXARu_YA8v0y6e7cbA3g'
})(MapContainer)
