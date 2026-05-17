// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Hospital251938 {

    struct Paciente {
        uint256 id;
        string nombre;
        uint256 edad;
    }

    Paciente[] public registros;

    constructor() {
        console.log("Ejecutado por: 251938 - Cesar Armando Pinillos Gomez");
    }
}