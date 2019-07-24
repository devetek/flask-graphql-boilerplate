import React from "react";
import Button from "@material-ui/core/Button";
import Dialog from "@material-ui/core/Dialog";
import DialogActions from "@material-ui/core/DialogActions";
import DialogContent from "@material-ui/core/DialogContent";
import DialogContentText from "@material-ui/core/DialogContentText";
import DialogTitle from "@material-ui/core/DialogTitle";

/**
 * Create a modal.
 * @param {boolean} isOpen - Modal open status.
 * @param {string} title - Title from the modal.
 * @param {string} description - Title from the modal.
 * @param {function} onCancelHandler - on click cancel handler.
 * @param {function} onOkHandler - on click ok handler.
 * @param {string} closeTxt - text show in close button.
 * @param {string} openTxt - text show in open button.
 */
export default ({
  isOpen = false,
  title = "Devetek",
  description = "Let Techno Help You",
  onCancelHandler = () => {},
  onOkHandler = () => {},
  closeTxt = "Tutup",
  openTxt = "Setuju"
}) => {
  const [open = isOpen, setOpen] = React.useState();

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
    <div>
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
    </div>
  );
};
