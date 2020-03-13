# First lecture (01-gates)

Basic AND, NAND, OR NOR, XOR, XNOR and NOT gates and its outputs.

## Output tables

#### AND && NAND Table
| **A** | **NOT** |
| :-: | :-: |
| 0 | 1 |
| 1 | 0 |

#### OR && NOR Table
| **A** | **B** | **AND** | **NAND** |
| :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 |
| 0 | 1 | 0 | 1 |
| 1 | 0 | 0 | 1 |
| 1 | 1 | 1 | 0 |

#### XOR && NXOR Table
| **A** | **B** | **OR** | **NOR** |
| :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 1 | 0 |

| **A** | **B** | **XOR** | **XNOR** |
| :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |

### Simple Animation
![basic_gates](../../IMG/basic_gates.gif)


###  De Morgan's law and combinational circuit

![equation](https://latex.codecogs.com/gif.latex?f%20%3D%20a%5Ccdot%20%5Coverline%7Bb%7D%20&plus;%20%5Coverline%7Bb%7D%5Ccdot%20%5Coverline%7Bc%7D)

&nbsp;

![equation](https://latex.codecogs.com/gif.latex?f_%7BAND%7D%3D%5Coverline%7B%5Coverline%7Ba%5Ccdot%20%5Coverline%7Bb%7D%7D%5Ccdot%20%5Coverline%7B%5Coverline%7Bb%7D%5Ccdot%20%5Coverline%7Bc%7D%7D%7D)

&nbsp;

![equation](https://latex.codecogs.com/gif.latex?f_%7BOR%7D%3D%5Coverline%7B%5Coverline%7Ba%7D&plus;b%7D&plus;%5Coverline%7Bb&plus;c%7D)

&nbsp;

#### Combinational table

| **A** | **B** |**C** | ![equation](https://latex.codecogs.com/gif.latex?f) | ![equation](https://latex.codecogs.com/gif.latex?f_%7BAND%7D) | ![equation](https://latex.codecogs.com/gif.latex?f_%7BOR%7D) |
| :-: | :-: | :-: | :-: | :-: | :-: |
| 0 | 0 | 0 | 1 | 1 | 1 |
| 0 | 0 | 1 | 0 | 0 | 0 |
| 0 | 1 | 0 | 0 | 0 | 0 |
| 0 | 1 | 1 | 0 | 0 | 0 |
| 1 | 0 | 0 | 1 | 1 | 1 |
| 1 | 0 | 1 | 1 | 1 | 1 |
| 1 | 1 | 0 | 0 | 0 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 |

#### Combinational circuit simulation

![logic](../../IMG/Screenshot_2020-02-06_11-16-34.png)
