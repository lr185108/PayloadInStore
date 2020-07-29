import React from 'react';
import logo from './logo.svg';
import MapContainer from './Component/MapContainer'
import MyFooter from './Component/MyFooter'
import MyHeader from './Component/MyHeader'
import SimpleMap from './Component/SimpleMap.jsx'
import SimpleMapOrig from './Component/SimpleMapOrig'
import Container from 'react-bootstrap/Container'
import Row from 'react-bootstrap/Row'
import Col from 'react-bootstrap/Col'
import { useMediaQuery } from 'react-responsive'
import './App.css';

function App() {

  const isTabletOrMobile = useMediaQuery({ query: '(max-width: 1224px)' })
  let body = <SimpleMapOrig />
  if (isTabletOrMobile)
     body =  <SimpleMap />

  return (
    <Container className="App">
     <Row>
       <Col > {body} </Col>
     </Row>
   </Container>
  );
}


export default App
