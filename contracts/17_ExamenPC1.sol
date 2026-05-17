// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Hospital251938 {

    struct Paciente {
        uint256 id;
        string nombre;
        uint256 edad;
        bool estado;
    }

    Paciente[] public registros;
    address public dirContrato = 0x9396B453Fad71816cA9f152Ae785276a1D578492;

    modifier mostrarConsola() {
        console.log("Ejecutado por: 251938 - Cesar Armando Pinillos Gomez");
        _;
    }

    constructor() {
        console.log("Ejecutado por: 251938 - Cesar Armando Pinillos Gomez");
    }

    function agregarElemento(uint256 _id, string memory _nombre, uint256 _edad, bool _estado) public mostrarConsola {
        require(bytes(_nombre).length > 0, "El nombre no puede estar vacio");

        for (uint256 i = 0; i < registros.length; i++) {
            require(registros[i].id != _id, "El ID ya esta registrado");
        }

        registros.push(Paciente(_id, _nombre, _edad, _estado));
    }

    function contarElementos() public view returns (uint256) {
        console.log("Ejecutado por: 251938 - Cesar Armando Pinillos Gomez");
        return registros.length;
    }
}