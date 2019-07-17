import React from "react";
import { BrowserRouter as Router, Route } from "react-router-dom";

import HomeComponent from "./HomePage";
import LoginComponent from "./LoginPage";

const Routes = () => {
  return (
    <Router>
      <Route exact path="/" component={HomeComponent} />
      <Route exact path="/login" component={LoginComponent} />
    </Router>
  );
};

export default Routes;
