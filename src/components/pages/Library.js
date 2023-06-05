import React from 'react';
import '../../App.css';
//components
import Cards from '../utilities/home/Cards';
import Footer from '../utilities/extras/Footer';



export default function Library() {
  return (
    <>
      <h1 className='library'>LIBRARY</h1>
      <Cards />
      <Footer />
    </>
  );
}
