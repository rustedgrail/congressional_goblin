import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

import AddressSubmission from "./components/AddressSubmission";

class App extends Component {
  render() {
    return (
      <div className="App">
        <div className="App-header">
          <h2>Congressional Goblin</h2>
        </div>
        <h4>Contact your representative - make your voice heard!</h4>
        <AddressSubmission></AddressSubmission>
      </div>
    );
  }
}

export default App;
