import React, { useState, useEffect } from "react";
import isObject from "lodash/isObject";
import Grid from "@material-ui/core/Grid";
import Paper from "@material-ui/core/Paper";

import useStyles from "./style";
import devFetch from "./../../libraries/devfetch";

const HomePage = () => {
  const [data, setData] = useState({});
  const classes = useStyles();

  useEffect(() => {
    async function fetchData() {
      const result = await devFetch("POST");

      if (isObject(result)) {
        setData({
          data: result.data || "",
          isSuccess: result.success || ""
        });
      }
    }

    fetchData();
  }, []);

  return (
    <div className={classes.root}>
      <Grid container spacing={3}>
        <Grid item xs={12}>
          <Paper className={classes.paper}>
            <p>Data Home Page: {JSON.stringify(data)}</p>
          </Paper>
        </Grid>
      </Grid>
    </div>
  );
};

export default HomePage;
