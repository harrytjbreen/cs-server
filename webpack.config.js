module.exports = {
  resolve: {
    extensions: ["*", ".mjs", ".js", ".json"],
  },
  module: {
    rules: [
      {
        test: /\.mjs$/,
        include: /node_modules/,
        type: "javascript/auto",
      },
    ],
  },
};
