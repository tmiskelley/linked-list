# Linked-list
This repository is my implementation of a Linked list data structure for Ruby. I modeled the list itself and the nodes to be contained within the list in two seperate classes, then added several convenience methods to make the data structure easier to work with.

# How to use
To use this data structure, simply include it in your file, and create an instance of it as you would with a hash or an array; all methods can be called directly on the instance of the class.

# Methods
| Methods           | Description |
| ----------------- | ----------: |
| #append(value)    | Adds a new node containing value to the end of the list |
| #prepend(value)   | Adds a new node containing value to the beginning of the list |
| #size             | Returns the total number of nodes in the list |
| #head             | Returns the first node in the list |
| #tail             | Returns the last node in the list |
| #at(index)        | Returns the node at the given index |
| #pop              | Removes the last element from the list |
| #contains?(value) | Returns true if the passed in value is in the list and otherwise returns false |
| #find(value)      | Returns the index of the node containing value, or nil if not found |
| #to_s             | Prints a string representation of the list |