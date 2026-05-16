// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Mensajeria {
    
    struct Mensaje {
        address remitente;
        address destinatario;
        string contenido;
        uint256 fecha;
    }

    address public propietario;
    Mensaje[] public historial;

    event NuevoMensaje(address de, address para, string contenido, uint256 fecha);

    constructor() {
        propietario = msg.sender;
    }

    modifier soloPropietario() {
        require(msg.sender == propietario, "No tienes permiso");
        _;
    }

    function enviarMensaje(address _para, string memory _texto) public soloPropietario {
        Mensaje memory mensaje = Mensaje({
            remitente: msg.sender,
            destinatario: _para,
            contenido: _texto,
            fecha: block.timestamp
        });

        historial.push(mensaje);

        emit NuevoMensaje(msg.sender, _para, _texto, block.timestamp);
    }

    function obtenerTotalMensajes() public view returns (uint256) {
        return historial.length;
    }
}