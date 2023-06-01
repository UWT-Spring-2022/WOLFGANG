import React from 'react';
import CardItem from './CardItem';
import './Cards.css';

function Cards() {
  return (
    <div className='cards'>
      <h1>Check out these COMMON languages you can learn!</h1>
      <div className='cards__container'>
        <div className='cards__wrapper'>
          <ul className='cards__items'>
            <CardItem
              src='images/language/c_logo.jpg'
              text='May the Cherry Blossom bring you new beginnings'
              label='C'
              path='/store'
            />
            <CardItem
              src='images/language/csharp_logo.png'
              text='Slow and Steady is the new name to the game'
              label='C#'
              path='/store'
            />
          </ul>
          <ul className='cards__items'>
            <CardItem
              src='images/language/html5_logo.png'
              text='Always look towards new opportunities'
              label='HTML'
              path='/store'
            />
            <CardItem
              src='images/language/javascript_logo.jpg'
              text='A bit of confidence goes a long way'
              label='JavaScript'
              path='/store'
            />
            <CardItem
              src='images/language/python_logo.png'
              text='Seek inner peace admist the storm'
              label='Python'
              path='/store'
            />
            <CardItem
              src='images/language/java_logo.jpg'
              text='Learn to adapt to every situation'
              label='Java'
              path='/store'
            />
          </ul>
        </div>
      </div>
    </div>
  );
}

export default Cards;