import React from 'react';
import '../../App.css'
//components
import Cards from "../utilities/home/Cards"
import Bubbles from "../utilities/languages/Bubbles"
import Footer from '../utilities/extras/Footer'
//css
import '../utilities/languages/Bubbles.css'

function Languages() {
  return (
    <div>
      <h1 className='languages'>Languages</h1>
      <Bubbles />
      <Footer />
    </div>
  );
}

export default Languages;