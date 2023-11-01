// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

// Scripting tool
import {Script} from "../lib/forge-std/src/Script.sol";

// Core contracts
import {IInfiltration} from "../contracts/interfaces/IInfiltration.sol";

contract StartGame is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("TESTNET_KEY");
        IInfiltration infiltration = IInfiltration(0x02FCDB178Cc1e2Cf053BA1b8F7eF99D984C99Beb);

        vm.startBroadcast(deployerPrivateKey);
        infiltration.startGame();
        vm.stopBroadcast();
    }
}

// https://mainnet.gateway.tenderly.co
// https://sepolia.infura.io/v3/41da61585a3c420cb9067f9e5edb5d0c
// https://rpc.ankr.com/eth_sepolia