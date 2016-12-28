import React from "react";

class AddressSubmission extends React.Component {
  constructor(props) {
    super(props);
    this.state = { address: "" };
    this.changeAddress = e => {
      this.setState({
        address: e.target.value
      });
    }

    this.submitAddress = () => {
    const xhr = new XMLHttpRequest();
      xhr.open(
        "GET",
        `http://localhost:4000/api/get-representatives?address=${encodeURIComponent(this.state.address)}`,
        true
      );
      xhr.send();

      xhr.onload = () => console.log(arguments);
    }
  }

  render() {
    return (
      <div>
        <label>What is your address?</label>
        <input type="text" onChange={this.changeAddress} />
        <input type="button" value="Find you Representatives" onClick={this.submitAddress} />
        <br />
        <div>{this.state.address}</div>
      </div>
    );
  }
}

export default AddressSubmission;
