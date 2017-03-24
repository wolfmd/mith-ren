# mithören
An extensible platform for wireless peripheral keystroke sniffing for microcomputers.

## Overview
![alt tag](https://raw.githubusercontent.com/wolfmd/mith-ren/master/mithren_logo.png)
The purpose of this project is to provide for simple, extensible, human-readable interfacing with wireless peripheral sniffing. By combing a suite of existing tools into a simple set of commands, this platform makes penetration testing and device reconnaissance compact.

mithören was developed as the senior design project of Michael Wolf and Colin Buckles for the University of Cincinnati's School of Information Technology. It was presented on April 11th, 2017 at the 2017 UC IT Expo. The slide deck can be viewed at wolfmd.me/docs/mithren.pdf.

This project is licensed under GPL v3.

## Objectives
mithören seeks to bring together a variety of tools from around the Internet which can be used for testing the security of wireless peripherals for vulnerabilities.

While this initiative is generally an educational PoC, it will be continually developed, building support for a variety of hardware hacking models and eventually GNU Radio interfaces.

*Disclaimer: This tool in its present state is for educational and research purposes only. Please contact the owner before use outside of this context*

## Present State
mithören currently supports:
  - [x] Mousejack
  - [ ] KeySweeper
  - [ ] KeyKeriki
  - [ ] GNU Radio

mithören currently exports reports in:
  1. Email
    - Plaintext
    - JSON

## Installation=
The application can be run immediately given the proper hardware. Modules generally require an antenna that can transmit and receive on the desired frequency bands. For requirements of each module, see the notes below:
 1. Mousejack
    - https://github.com/BastilleResearch/mousejack
    - Both the teensy and the Crazy Radio PA work, however the range on the teensy is quite limited

### To utilize the full-system image:
 - Flash image file under 'image' onto an SD-card

### For the standalone application:
```
cd app/
python mithren-frontend.py
```

### Daemonization:
 - Start the mithrend.py script in your terminal or set it up a service using the mithren.service file in you /etc/systemctl directory

## Support
Any questions or comments can be sent to:
michael@nullbrook.org
