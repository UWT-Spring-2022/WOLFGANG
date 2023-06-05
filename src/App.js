//react origin
import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
//components
import Home from './components/pages/Home';
import Search from './components/pages/Search';
import Languages from './components/pages/Languages';
import Library from './components/pages/Library';
import Register from './components/pages/Register';
import Navbar from './components/utilities/extras/Navbar';
//css
import './App.css';

function App() {
  return (
    <>
      <Router>
        <Navbar />
        <Routes>
          <Route path='/' element={<Home/>} />
          <Route path='/Search' element={<Search/>} />
          <Route path='/Languages' element={<Languages/>} />
          <Route path='/Library' element={<Library/>} />
          <Route path='/Register' element={<Register/>} />
        </Routes>
      </Router>
    </>
  );
}

export default App;
