import React, { useState, useEffect } from 'react';
import { getPosts } from "../utilities/search/axios";
//components
import SearchBar from '../utilities/search/SearchBar';
import ListPage from "../utilities/search/ListPage"
import Footer from '../utilities/extras/Footer';
//css
import '../../App.css';

function Search() {
  const [posts, setPosts] = useState([])
  const [searchResults, setSearchResults] = useState([])

  useEffect(() => {
    getPosts().then(json => {
      setPosts(json)
      return json
    }).then(json => {
      setSearchResults(json)
    })
  }, [])

  return (
    <div>
      <h1 className='search'>SEARCH</h1>
      <SearchBar posts={posts} setSearchResults={setSearchResults} />
      <ListPage searchResults={searchResults} />
      <Footer />
    </div>
  );
}

export default Search;