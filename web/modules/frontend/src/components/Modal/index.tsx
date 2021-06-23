import Button from "@material-ui/core/Button";
import Dialog from "@material-ui/core/Dialog";
import DialogActions from "@material-ui/core/DialogActions";
import DialogContent from "@material-ui/core/DialogContent";
import DialogContentText from "@material-ui/core/DialogContentText";
import DialogTitle from "@material-ui/core/DialogTitle";
import React, { useState } from "react";

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
export default (props: ComponentModal) => {
  const [open, setOpen] = useState<boolean>(false);

  const handleCancel = (): void => {
    if (props.onCancelHandler) {
      props.onCancelHandler();
    }

    toggleOpenStatus();
  };

  const handleOk = (): void => {
    if (props.onOkHandler) {
      props.onOkHandler();
    }
    toggleOpenStatus();
  };

  const toggleOpenStatus = (): void => {
    const revStatus = !open;

    setOpen(revStatus);
  };

  return (
    <Dialog
      open
      onClose={toggleOpenStatus}
      aria-labelledby="alert-dialog-title"
      aria-describedby="alert-dialog-description"
    >
      <DialogTitle id="alert-dialog-title">{props.title || 'Title'}</DialogTitle>
      <DialogContent>
        <DialogContentText id="alert-dialog-description">
          {props.description || ''}
        </DialogContentText>
      </DialogContent>
      <DialogActions>
        <Button onClick={handleCancel} color="primary">
          {props.closeTxt || 'Close'}
        </Button>
        <Button onClick={handleOk} color="primary" autoFocus>
          {props.openTxt || 'Ok'}
        </Button>
      </DialogActions>
    </Dialog>
  );
};