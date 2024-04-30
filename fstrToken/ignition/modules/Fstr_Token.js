const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("FstrModule", (m) => {
  const Fstr_Token = m.contract("Token");

  return { Fstr_Token };
});
