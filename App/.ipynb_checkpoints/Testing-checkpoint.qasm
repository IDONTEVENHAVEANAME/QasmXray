// Declare the version of OpenQASM being used
OPENQASM 3.0;
// Include the standard gates library for OpenQASM 3.0
include "stdgates.inc";

// Create a quantum array with 2 qubits and a classical array with 2 bits
qubit[2] q;
bit[2] c;

// Reset both qubits in the register
reset q[0];
reset q[1];

// Apply Gates
// Hadamard Gate (H): Create superposition on the first qubit
h q[0];
// Pauli-X Gate (X): The quantum equivalent of a classical NOT gate; it flips a 0 to a 1, and vice versa, on the second qubit
x q[1];  
// Controlled-NOT Gate (CNOT/CX): A two-qubit gate that flips the target qubit (second qubit) only if the control qubit (first qubit) is in state |1>. This gate is used to create entanglement between the two qubits.
cx q[0], q[1]; // q[0] is the control qubit, and q[1] is the target qubit

// To extract information from the quantum state, we measure the qubits and store the results in classical bits. The measurement collapses the quantum state into one of the basis states, and the outcome is recorded in the corresponding classical bit.
c[0] = measure q[0];
c[1] = measure q[1];
