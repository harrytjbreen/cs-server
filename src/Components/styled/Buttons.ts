import styled from "styled-components";

const Button = styled.button`
  border: none;
  padding: 0.5rem 1rem;
  border-radius: 0.25rem;
  width: 100%;
  max-width: 25rem;
`;

const PrimaryButton = styled(Button)`
  background-color: ${(props) => props.theme.colors.primary};
`;

const SuccessButton = styled(Button)`
  background-color: ${(props) => props.theme.colors.success};
`;

const LogoutButton = styled(Button)`
  background-color: ${(props) => props.theme.colors.danger};
  position: absolute;
  top: 2px;
  right: 2px;
`;

export { Button as default, PrimaryButton, SuccessButton, LogoutButton };
