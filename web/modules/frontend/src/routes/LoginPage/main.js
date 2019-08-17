import React, { useState } from "react";
import getLodash from "lodash/get";
import Avatar from "@material-ui/core/Avatar";
import Button from "@material-ui/core/Button";
import CssBaseline from "@material-ui/core/CssBaseline";
import TextField from "@material-ui/core/TextField";
import FormControlLabel from "@material-ui/core/FormControlLabel";
import Checkbox from "@material-ui/core/Checkbox";
import Link from "@material-ui/core/Link";
import Grid from "@material-ui/core/Grid";
import LockOutlinedIcon from "@material-ui/icons/LockOutlined";
import Typography from "@material-ui/core/Typography";
import Container from "@material-ui/core/Container";

import Modal from "../../components/Modal";
import useStyles from "./style";
import devFetch from "../../libraries/devfetch";
import { devStoreSave } from "../../libraries/devstorage";

const modalErrorDefaultProps = () => ({
  isOpen: false,
  title: "",
  description: "",
  closeTxt: "Close",
  openTxt: "Ok",
  onCancelHandler: () => {},
  onOkHandler: () => {}
});

const LoginPage = () => {
  const classes = useStyles();
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [modalProps, setModalProps] = useState(modalErrorDefaultProps());

  const handleChangeUsername = name => event => {
    setUsername(event.target.value);
  };

  const handleChangePassword = name => event => {
    setPassword(event.target.value);
  };

  const handleModalOkAndClose = () => {
    modalProps["isOpen"] = !modalProps["isOpen"];

    setModalProps({ ...modalProps, ...{ isOpen: true } });
  };

  const handleOnSubmit = async e => {
    e.preventDefault();

    const response = await devFetch(
      "POST",
      {},
      {
        member_username: username,
        member_password: password
      }
    );

    const isSuccess = getLodash(response, "data.success") || false;

    if (isSuccess) {
      const accessToken = getLodash(response, "data.access_token");
      const refreshToken = getLodash(response, "data.refresh_token");

      devStoreSave("accessToken", accessToken);
      devStoreSave("refreshToken", refreshToken);
    } else {
      setModalProps({ ...modalProps, ...{ isOpen: true } });
    }
  };

  return (
    <Container component="main" maxWidth="xs">
      <Modal {...modalProps} />
      <CssBaseline />
      <div className={classes.paper}>
        <Avatar className={classes.avatar}>
          <LockOutlinedIcon />
        </Avatar>
        <Typography component="h1" variant="h5">
          Sign in
        </Typography>
        <form className={classes.form} noValidate onSubmit={handleOnSubmit}>
          <TextField
            onChange={handleChangeUsername("username")}
            variant="outlined"
            margin="normal"
            required
            fullWidth
            id="username"
            label="Username/Email"
            name="username"
            autoComplete="username"
            autoFocus
          />
          <TextField
            onChange={handleChangePassword("password")}
            variant="outlined"
            margin="normal"
            required
            fullWidth
            name="password"
            label="Password"
            type="password"
            id="password"
            autoComplete="current-password"
          />
          <FormControlLabel
            control={<Checkbox value="remember" color="primary" />}
            label="Remember me"
          />
          <Button
            type="submit"
            fullWidth
            variant="contained"
            color="primary"
            className={classes.submit}
          >
            Sign In
          </Button>
          <Grid container>
            <Grid item xs>
              <Link href="#" variant="body2">
                Forgot password?
              </Link>
            </Grid>
            <Grid item>
              <Link href="#" variant="body2">
                {"Don't have an account? Sign Up"}
              </Link>
            </Grid>
          </Grid>
        </form>
      </div>
    </Container>
  );
};

export default LoginPage;
