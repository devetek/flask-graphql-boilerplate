import React from "react";

const Title: React.FunctionComponent<ComponentTitle> = (props) => {
  return <h1>{props.title}</h1>;
};

export default Title;