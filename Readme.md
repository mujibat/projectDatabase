Differences between 
- A view function and pure function
View functions are read only functions and do not modify the state of the block chain. In other words if you want to read data from the block chain one can use view. Getter method are by default view functions. These functions cannot:
  Write to state variables – update the block chain
  Emit events
  Create contracts or use self destruct
  Send ether
Pure functions are more restrictive then view functions and do not modify the state AND do not read the state of the block chain.  These functions cannot:
  Read from state variables – read the block chain
  Access balances
  Call functions not marked pure  

- A payable and nonpayable function
it is explicitly stated that non-payable functions are more restrictive than payable ones, so, it makes sense if non-payable functions are convertible to payable functions.
it also accepts payment of zero Ether, so it also is non-payable. On the other hand, a non-payable function will reject Ether sent to it, so non-payable functions cannot be converted to payable functions.

- Constant data type and immutable data type
A constant is a data object with a fixed value that cannot be changed during program execution. The value of a constant can be a numeric value, a logical value, or a character string. A constant that does not have a name is a literal constant. A literal constant must be of intrinsic type and it cannot be array-valued
Immutable data types differ from their mutable counterparts in that they can not be changed after creation. Some immutable types include numeric data types, strings, bytes, frozen sets, and tuples.

- A Read Function and Write function
The read() function reads data previously written to a file. If any portion of a regular file prior to the end-of-file has not been written, read() shall return bytes with value 0.
The write function returns the number of bytes successfully written into the file, which may at times be less than the specified nbytes.