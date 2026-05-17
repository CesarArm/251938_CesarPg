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

    mapping(uint256 => Paciente) public registros;
    uint256[] private listaIds;
    
    uint256 public cantidad;
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
        require(registros[_id].id == 0, "El ID ya esta registrado");

        registros[_id] = Paciente(_id, _nombre, _edad, _estado);
        listaIds.push(_id);
        cantidad++;
    }

    function contarElementos() public view mostrarConsola returns (uint256) {
        return cantidad;
    }

    function inactivarElemento(uint256 _id) public mostrarConsola {
        require(registros[_id].id != 0, "El ID no existe");
        registros[_id].estado = false;
    }

    function pintarElementosActivos() public view mostrarConsola {
        for (uint256 i = 0; i < listaIds.length; i++) {
            uint256 idActual = listaIds[i];
            if (registros[idActual].estado == true) {
                console.log("Mascota activa:", registros[idActual].id, registros[idActual].nombre);
            }
        }
    }

    function pintarElementosImpares() public view mostrarConsola {
        for (uint256 i = 0; i < listaIds.length; i++) {
            uint256 idActual = listaIds[i];
            if (registros[idActual].id % 2 != 0) {
                console.log("Mascota ID impar:", registros[idActual].id, registros[idActual].nombre);
            }
        }
    }
}