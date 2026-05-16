// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Animal {
    string public especie;

    constructor(string memory _especie) {
        especie = _especie;
    }

    function hacerSonido() public pure virtual returns(string memory) {
        return "aah";
    }

    function obtenerInfo() public view returns(string memory) {
        return string.concat("Soy un ", especie);
    }
}

contract Perro is Animal {

    constructor() Animal("Perro") {

    }

    function hacerSonido() public pure override returns(string memory){
        return "Guau";
    }

}

contract Gato is Animal {

    constructor() Animal("Gato") {

    }

    function hacerSonido() public pure override returns(string memory){
        return "Miau";
    }


    function ronronar() public pure returns (string memory) {
        return "rrrrrrrr";
    }
 
}

contract PetStore {
    Animal[] public animales;

    function agregarPerro() public {
        Perro p = new Perro();
        animales.push(p);
    }

    function agregarGato() public {
        Gato g = new Gato();
        animales.push(g);
    }

    function getCantidadAnimales() public view returns (uint) {
        return animales.length;
    }

    function sonidoAnimal(uint index) public view returns (string memory) {
        return animales[index].hacerSonido();
    }

    function infoAnimal(uint index) public view returns (string memory) {
        return animales[index].obtenerInfo();
    }
}   