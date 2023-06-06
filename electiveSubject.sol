// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

interface UofM {
    function getSathayeSubjects() external view returns (string[] memory);
    function getMLDCSubjects() external view returns (string[] memory);
}
contract SubjectList is UofM {
    string[] private sem1Subjects = ["Data Science", 
                                     "Soft Computing", 
                                     "Cloud Computing", 
                                     "Research in Computing"];
    string[] private sem2Subjects = ["Image Processing", 
                                     "Big Data", 
                                     "Microservice", 
                                     "Modern Networking"];
    
    function getSathayeSubjects() public view override returns (string[] memory) {
        return sem1Subjects;
    }    
    function getMLDCSubjects() public view override returns (string[] memory) {
        return sem2Subjects;
    }
}
