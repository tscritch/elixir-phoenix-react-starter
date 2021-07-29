// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import React from "react";

const App: React.FC = () => {
  return (
    <div>
      <h1>My App</h1>
    </div>
  );
};

export default App;
