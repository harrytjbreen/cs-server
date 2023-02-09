import React, { useEffect } from "react";
import { Amplify } from "aws-amplify";
import { ThemeProvider } from "styled-components";
import awsconfig from "./aws-exports";
import Theme from "./theme/theme";
import GlobalStyle from "./theme/globalStyle";
import { Authenticator } from "@aws-amplify/ui-react";

import "@aws-amplify/ui/dist/styles.css";
import Dashboard from "./Components/Dashboard";
import configureAxios from "./config/axios";
Amplify.configure(awsconfig);

const App = () => {
  useEffect(() => {
    configureAxios();
  }, []);

  return (
    <ThemeProvider theme={Theme}>
      <GlobalStyle />
      <Authenticator hideSignUp={true}>
        {({ user, signOut }) => <Dashboard user={user} signOut={signOut} />}
      </Authenticator>
    </ThemeProvider>
  );
};

export default App;
