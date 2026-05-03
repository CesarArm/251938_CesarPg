// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Eventos {

    uint256 private cantidad = 10;
    uint256 private valorAnt;
    
    event CambiarValorCantidad(address invocador, uint256 valorAnt, uint256 nuevoValor);

    function cambiarCantidad(uint256 _cantidad) public {
        valorAnt = cantidad;
        cantidad = _cantidad;
        emit CambiarValorCantidad(msg.sender, valorAnt, _cantidad);
    }
    
    function obtenerCantidad() public view returns (uint256) {
        return cantidad;
        
    }



}