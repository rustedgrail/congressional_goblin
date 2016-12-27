import React, {Component} from "react";

class AddressSubmission extends Component {
  render() {
    return (
      <form>
        <label>What is your address?</label>
        <input type="text" />
        <input type="submit" value="Find you Representatives" />
      </form>
    );
  }
}

export default AddressSubmission;
