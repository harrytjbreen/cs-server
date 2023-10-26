import React from 'react';
import {withAuthenticator, WithAuthenticatorProps} from "@aws-amplify/ui-react";
import '@aws-amplify/ui-react/styles.css';

import './aws-exports'

export function App({ signOut, user }: WithAuthenticatorProps) {
    return (
        <>
            <h1>Hello {user?.username}</h1>
            <button onClick={signOut}>Sign out</button>
        </>
    );
}

export default withAuthenticator(App);
