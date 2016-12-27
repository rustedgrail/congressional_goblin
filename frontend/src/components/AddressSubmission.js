import React, {Component} from "react";

class AddressSubmission extends Component {
  constructor(props) {
    super(props);
    this.state = { address: "" };
  }

  changeAddress(e) {
    // this.setState({
    //   address: e.target.value
    // });
  }

  submitAddress() {
    const xhr = new XMLHttpRequest();
    xhr.open(
      "POST",
      `http://localhost:4000/api/get-representatives?address=${encodeURIComponent(address)}`,
      true
    );
    xhr.send();

    xhr.onload(() => console.log(arguments));
  }

  render() {
    return (
      <div>
        <label>What is your address?</label>
        <input type="text" onChange={this.changeAddress} />
        <input type="button" value="Find you Representatives" onClick={this.submitAddress} />
      </div>
    );
  }
}

export default AddressSubmission;
