const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("FstrModule", (m) => {
  const Fstr_Token = m.contract("FstrToken", ["0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266", 100]);

  return { Fstr_Token };
});
