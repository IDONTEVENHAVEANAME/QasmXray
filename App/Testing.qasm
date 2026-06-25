OPENQASM 3.0;
include "stdgates.inc";

// FIX: Move the [2] before the variable name
qubit[2] q;
bit[2] c;

// Reset both qubits in the register
reset q[0];
reset q[1];

// Apply Gates
h q[0];
cx q[0], q[1];

// FIX: Measure into the rearranged classical register
c[0] = measure q[0];
c[1] = measure q[1];
