import React from 'react';
import {Authenticator} from "@aws-amplify/ui-react";
import '@aws-amplify/ui-react/styles.css';

import './aws-exports'

const App = () => {
  return (
      <Authenticator>
          {({ signOut, user }) => {

              console.log(user);

              return <main>
                  <h1>Hello {user!.username}</h1>
                  <button onClick={signOut}>Sign out</button>
              </main>
          }}
      </Authenticator>
  );
}

export default App;
