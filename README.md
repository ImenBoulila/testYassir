# testYassir
Automated Testing Project with Maestro

This automated testing project uses the Maestro framework to execute test scenarios.

1. Project Structure

1.1 YAML Files

The YAML files contain the test scenarios for Maestro.

1.2 Configuration File

A single configuration file, config.yaml, is used to centralize the execution of all YAML files. This file lists and organizes the test files for execution based on clients and tags.

1.3 Shell Script

A .sh script is used to run the tests: test.sh.

This script contains:

The maestro command that generates a test report.

1.4 JavaScript Files

dataTest.js: Contains the test data sets.

element.js: Contains the element IDs.

1.5 Feature Files

Includes two feature files:

login.feature

make_research.feature

2. Installing Maestro

2.1 Prerequisites

Operating System: Ubuntu, macOS, or Windows.

Java: Ensure that Java 11 or a later version is installed.

Node.js: Install version 16 or later.

2.2 Installation Steps

A. Install Maestro

To install Maestro, run the following command:

curl -fsSL "https://get.maestro.mobile.dev" | bash

For Windows Users:

Install a Virtual Machine (VM) with Ubuntu.

Install Maestro within the Ubuntu VM using:

curl -fsSL "https://get.maestro.mobile.dev" | bash

For Ubuntu Users:

Directly install Maestro by executing:

curl -fsSL "https://get.maestro.mobile.dev" | bash

B. Verify Installation

Check the installed version with:

maestro --version

C. Configure Permissions (If Necessary)

If you encounter permission issues, prepend sudo to the installation command.

For detailed documentation, visit:
Maestro Installation Guide

2.3 Installation Validation

To validate the installation, run:

maestro test --help

If no errors appear, Maestro has been installed successfully.

3. Project Execution

3.1 Command in Shell Script

To execute tests and generate an HTML report, run:

maestro test --format html --output RapporMaestro.html ./flows

3.2 Running Tests

Execute the shell script:

./test.sh

4. Conclusion

This Maestro project is designed for efficient and modular management of automated test scenarios for mobile applications.

