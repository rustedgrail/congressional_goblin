import React, { Component } from 'react';
// import logo from './logo.svg';
import './App.css';

import AddressSubmission from "./components/AddressSubmission";
import RepresentativeList from "./components/RepresentativeList";
import MessageRepresentative from "./components/MessageRepresentative";

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      showAddress: true,
      showReps: false,
      showMessage: false,
      repsList: [],

      showRepsList: (xhr) => {
        this.setState({
          showAddress: false,
          showReps: true,
          showMessage: false,

          repsList: JSON.parse(xhr.target.response).data
        });
      }
    };
  }

  render() {
    return (
      <div className="App">
        <div className="App-header">
          <h2>Congressional Goblin</h2>
        </div>
        <h4>Contact your representative - make your voice heard!</h4>
        { this.state.showAddress ? <AddressSubmission onRepLoad={this.state.showRepsList} /> : null }
        { this.state.showReps ? <RepresentativeList repsList={this.state.repsList} /> : null }
        { this.state.showMessage ? <MessageRepresentative /> : null }
      </div>
    );
  }
}

export default App;
