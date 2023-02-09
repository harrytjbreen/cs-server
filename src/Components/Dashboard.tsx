import React from "react";
import { CognitoUser } from "@aws-amplify/auth";
import Container from "./styled/Container";
import Button, { LogoutButton } from "./styled/Buttons";

interface Props {
  user: CognitoUser | undefined;
  signOut: (() => void) | undefined;
}

const Dashboard: React.FC<Props> = ({ user, signOut }) => {
  return (
    <Container>
      <div>
        <h1>Welcome {user?.getUsername()}</h1>
        <p>Server Status</p>
        <div>
          <LogoutButton onClick={() => signOut?.()}>Sign Out</LogoutButton>
        </div>
      </div>
    </Container>
  );
};

export default Dashboard;
