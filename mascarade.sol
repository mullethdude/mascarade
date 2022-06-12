// SPDX-License-Identifier: AGPL-1.0
pragma solidity 0.8.9;


contract Mascarade {

    mapping (address => mapping (uint256 =>  mapping (address => string))) public mascarade;

    function testlinker(address ecriteur) public 
    {
        string memory test ="{ \"name\": \"Token mask\", \"description\": \"Token mask\",\"image\": \"data:image/svg+xml,<svg viewBox='0 0 32 16' xmlns='http://www.w3.org/2000/svg'><ellipse cx='50%' cy='50%' rx='40%' ry='40%' fill='rgb(152, 142, 24)' /><text x='50%' y='50%' dominant-baseline='middle' text-anchor='middle' style='fill: rgb(140, 252, 129); font-size: 12px;'>99</text></svg>\" }";
        mascarade[0xE90604B91300822442ad46F0eC76150539945D18][0][ecriteur]=test;
    }

    function carnaval(address ca,  uint256 ti,  address ecriteur, string memory jsonasofnow) public 
    {
        mascarade[ca][ti][ecriteur]=jsonasofnow;
    }

    function baslesmasques( address ca,  uint256 ti,  address ecriteur) public 
    view   returns (string memory) {
        return mascarade[ca][ti][ecriteur];
    }

    function symbol() external pure returns (string memory) {
        return "Mask";
    }

    function name() external pure returns (string memory) {
        return "Mascarade";
    }

    
}
