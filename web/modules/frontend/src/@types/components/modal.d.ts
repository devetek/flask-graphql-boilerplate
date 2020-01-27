interface ComponentModal {
  isOpen?: boolean;
  title?: string;
  description: string;
  onCancelHandler?: () => any;
  onOkHandler?: () => any;
  closeTxt?: string;
  openTxt?: string;
}