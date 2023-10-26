import {Amplify} from "aws-amplify";

Amplify.configure({
    Auth: {
        region: "eu-west-2",
        userPoolId: "eu-west-2_wtp44q4bZ",
        userPoolWebClientId: "6d8ukgg34bbg5phvmdea71ktj8",
    }
});

