import React from "react";

class RepresentativeList extends React.Component {
  render() {
    const repJsx = this.props.repsList.map(row => {
      return (
        <div>
          <h3>{row.name}</h3>
          <img width="50" src={row.photoUrl} />
          <br />
          { row.urls && row.urls.length ? <a href={row.urls[0]}>Home Page</a> : null }
        </div>
      );
    });

    return (
      <div>
      {repJsx}
      </div>
    );
  }
}

export default RepresentativeList;
