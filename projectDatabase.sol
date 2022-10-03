// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// creating a smart contract for the students database
contract Database {

    // structure of a student
    struct Student{

        // variable datatype
        string name;
        int age; 
        int ID;
        string gender;

    }

    Student []stdDatabase;

    int public stdRegister = 0;

    mapping(int => Student) public stdRecords;

    // function that allows us to register a student
    function registerStudent (int ID, 
                           string memory name,
                           string memory gender,
                           int age) public {
                               Student memory e
                                    =Student(name,
                                            ID,
                                            age,
                                            gender);
                                stdDatabase.push(e);
                               //increasing the student register by 1
                              // stdRegister = stdRegister + 1;

                              // stdRecords[stdRegister] = Student(ID, name, 
                                //       gender, age);
                           }
    //function that allows us to see the record of a student with the student ID 
    function studentID (int ID) public view returns ( string memory _name,
                           string memory _gender,
                           int _age){
                                    uint i;
                                    for(i=0;i<stdDatabase.length;i++)
                                    {
                                        Student memory e
                                            =stdDatabase[i];
                                        
                                        // Looks for a matching 
                                        // employee id
                                        if(e.ID==ID)
                                        {
                                                return(e.name,
                                                    e.gender,
                                                    e.age);
                                        }
                                    }
                                    
                                }
                            
     
}