import { createGlobalStyle } from "styled-components";

const GlobalStyle = createGlobalStyle`
  html * {
    font-family: ".SF NS Mono", "Roboto Light", sans-serif !important;
    overscroll-behavior: contain;
  }
`;

export default GlobalStyle;
