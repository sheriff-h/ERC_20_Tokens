import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

const CAP = 100000;

const LockModule = buildModule("devTokenModule", (m) => {
  
  const lock = m.contract("DevToken", []);

  return { lock };
});

export default LockModule;
