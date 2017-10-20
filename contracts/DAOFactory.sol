pragma solidity ^0.4.11;

import "./DAO.sol";

contract DAOFactory {

    mapping(address => string) DAOs;

    function DAOFactory(){}

    function create(address _address, string _name, string _description, uint8 _minVote, address[] _participants) returns (address) {
        address newDAO = new DAO(_address, _name, _description, _minVote, _participants);
        DAOs[newDAO] = _name;

        return newDao;
    }
}
