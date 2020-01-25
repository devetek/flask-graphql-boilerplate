import React, { useState } from "react";
import Button from "@material-ui/core/Button";
import Dialog from "@material-ui/core/Dialog";
import DialogActions from "@material-ui/core/DialogActions";
import DialogContent from "@material-ui/core/DialogContent";
import DialogContentText from "@material-ui/core/DialogContentText";
import DialogTitle from "@material-ui/core/DialogTitle";
import { IModal } from "components/Modal/interface";

/**
 * Create a modal.
 * @param {boolean} isOpen - Modal open status.
 * @param {string} title - Title from the modal.
 * @param {string} description - Description from the modal.
 * @param {function} onCancelHandler - on click cancel handler.
 * @param {function} onOkHandler - on click ok handler.
 * @param {string} closeTxt - text show in close button.
 * @param {string} openTxt - text show in open button.
 */
export default ({
  isOpen = false,
  title = "",
  description = "",
  onCancelHandler = () => {},
  onOkHandler = () => {},
  closeTxt = "close",
  openTxt = "Ok"
}: IModal) => {
  const [open, setOpen] = useState<boolean>(isOpen);

  const handleCancel = () => {
    onCancelHandler();
    toggleOpenStatus();
  };

  const handleOk = () => {
    onOkHandler();
    toggleOpenStatus();
  };

  const toggleOpenStatus = () => {
    const revStatus = !open;

    setOpen(revStatus);
  };

  return (
    <React.Fragment>
      <Dialog
        open={open}
        onClose={toggleOpenStatus}
        aria-labelledby="alert-dialog-title"
        aria-describedby="alert-dialog-description"
      >
        <DialogTitle id="alert-dialog-title">{title}</DialogTitle>
        <DialogContent>
          <DialogContentText id="alert-dialog-description">
            {description}
          </DialogContentText>
        </DialogContent>
        <DialogActions>
          <Button onClick={handleCancel} color="primary">
            {closeTxt}
          </Button>
          <Button onClick={handleOk} color="primary" autoFocus>
            {openTxt}
          </Button>
        </DialogActions>
      </Dialog>
    </React.Fragment>
  );
};
