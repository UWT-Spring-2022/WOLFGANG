import React from 'react'

const Bubbles = () => {
  return (
    <div>

      <svg xlmlns="http://www.w3.org/2000/svg" version="1.1" height="800" width="1300" style={{border: '1px solid blue'}}>
        <text x="800" y="400" font-size="5em" fill="blue">Hello World</text>
        
        <circle cx="130" cy="130" r="80" fill="orange" stroke="#000000" stroke-width="2" />
        <text x="90" y="130" fill="#000000">JavaScript</text>

        <circle cx="200" cy="330" r="100" fill="blue" stroke="#000000" stroke-width="2" />
        <text x="185" y="330" fill="white">C++</text>

        <circle cx="400" cy="250" r="90" fill="yellow" stroke="#000000" stroke-width="2" />
        <text x="380" y="250" fill="#000000">Ruby</text>

        <circle cx="200" cy="600" r="150" fill="green" stroke="#000000" stroke-width="2" />
        <text x="180" y="600" fill="#000000">Java</text>

        <circle cx="750" cy="600" r="75" fill="gray" stroke="#000000" stroke-width="2" />
        <text x="730" y="600" fill="greenyellow">Erlang</text>

        <circle cx="420" cy="450" r="90" fill="orange" stroke="#000000" stroke-width="2" />
        <text x="420" y="450" fill="#000000">C#</text>

        <circle cx="300" cy="100" r="70" fill="magenta" stroke="#000000" stroke-width="2"  />
        <text x="275" y="100" fill="#000000">PHP</text>

        <circle cx="600" cy="200" r="100" fill="#75f20f" stroke="#000000" stroke-width="2" />
        <text x="570" y="200" fill="#ffffff" stroke = "red" stroke-width="1">Python</text>

        <circle cx="620" cy="420" r="85" fill="magenta" stroke="#000000" stroke-width="2" />
        <text x="610" y="420" fill="#000000">Scala</text>

        <circle cx="500" cy="650" r="110" fill="red" stroke="#000000" stroke-width="2" />
        <text x="480" y="650" fill="yellow">HTML</text>

        <circle cx="950" cy="600" r="65" fill="purple" stroke="#000000" stroke-width="2" />
        <text x="920" y="600" fill="orange">Golang</text>

        <circle cx="1200" cy="650" r="70" fill="teal" stroke="#000000" stroke-width="2" />
        <text x="1180" y="650" fill="#ffffff">Clojure</text>
      </svg>

    </div>
  )
}

export default Bubbles
