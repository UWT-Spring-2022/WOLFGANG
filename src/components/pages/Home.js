import React from 'react';
import '../../App.css';
//components
import HeroSection from '../utilities/home/HeroSection';
import Footer from '../utilities/extras/Footer';
import Cards from "../utilities/home/Cards"

function Home() {
  return (
    <>
      <HeroSection />
      <Cards/>
      <Footer />
    </>
  );
}

export default Home;
