export interface IModal {
  isOpen?: boolean;
  title?: string;
  description: string;
  onCancelHandler?: () => any;
  onOkHandler?: () => any;
  closeTxt?: string;
  openTxt?: string;
}