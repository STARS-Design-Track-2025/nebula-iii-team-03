# NEBULA III - Project Documentation

## Team 03 - Azerbaijan Technologies
* **Peer Mentor:** Adrian Buczkowski
* Peter Kaya Gretchikha
* Genci Duraku
* Amogh Havanagi
* Raunak Dani

## Project Overview
Our final project goal is to make the popular 1988 game, Street Fighter. Our game uses an NES Controller Input to control two different characters on a VGA output. Then using functionalities such as punching and blocking, the 2 characters will be responsible for fighting until there is 1 declared winner.

## Pin Layout
Note that on the final chip, there are 38 GPIO pins of which you have access to 34.
The first number represents the GPIO on the physical chip, while the second number (in brackets) represents the number in your Verilog code. For each pin, mention if it is an input, output, or both and describe the pin function.

* **Pin 00 [00]** - Input or Output? - Pin Function?
* **Pin 01 [--]** - NOT ALLOWED
* **Pin 02 [--]** - NOT ALLOWED
* **Pin 03 [--]** - NOT ALLOWED
* **Pin 04 [--]** - NOT ALLOWED
* **Pin 05 [01]** - Output - VGA Hsync
* **Pin 06 [02]** - Output - VGA Vsync 
* **Pin 07 [03]** - Output - Red Channel 2
* **Pin 08 [04]** - Output - Red Channel 1 
* **Pin 09 [05]** - Output - Red Channel 0
* **Pin 10 [06]** - Output - Green Channel 2
* **Pin 11 [07]** - Output - Green Channel 1
* **Pin 12 [08]** - Output - Green Channel 0
* **Pin 13 [09]** - Output - Blue Channel 1
* **Pin 14 [10]** - Output - Blue Channel 0
* **Pin 15 [11]** - Output - Pulse signal for NES Controllers 
* **Pin 16 [12]** - Output - Latch signal for NES Controllers
* **Pin 17 [13]** - Input - NES Player 1 Input
* **Pin 18 [14]** - Input - NES Player 2 Input


## External Hardware
The external hardware components include 2 NES Controllers and a VGA Breakout Board which helps connect the output of the Digital to Analog Converter (DAC) to VGA. The schematic of the breadboard DAC to interface the GPIO is located in doc/team_03.

## Functionality Description and Testing
Describe in detail how your project works and how to test it.

## RTL Diagrams
Include more than just block diagrams, including sub-block diagrams, state-transition diagrams, flowcharts, and timing diagrams. Please include any images or documents of these inside this folder (docs/team_03).
