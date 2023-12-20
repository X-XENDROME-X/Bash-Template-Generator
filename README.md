# Bash-Template-Generator

A Bash script repository for generating code templates and handling command-line arguments. It includes scripts for creating C and C++ templates, greeting messages, author info, and concatenating specific file types in a directory.

## Scripts Overview

1. **`codeFileMaker.sh`**
   - Validates and processes command-line arguments to generate code templates.
   - Uses helper scripts 'makeHeader.sh' and 'codeTemplateMaker.sh'.

2. **`codeTemplateMaker.sh`**
   - Generates either a C or C++ code template based on the provided argument.
   - Includes error handling for incorrect or invalid arguments.

3. **`hello.sh`**
   - Takes a command-line argument (presumably a name) and prints a greeting message.

4. **`makeHeader.sh`**
   - Generates a C/C++ block comment containing information about the author, date, and description.

5. **`openAllCode.sh`**
   - Checks for command-line arguments, sets a directory variable based on the input and concatenates specified file types in that directory.

## Usage

### 1. Generate Code Templates
```bash
./codeFileMaker.sh <-c|-cpp> <name> <description> -o <output file>
```
### 2. Generate Code Template Only
```bash
./codeTemplateMaker.sh <-c|-cpp>
```
### 3. Greet User
```bash
./hello.sh <name>
```
### 4. Make Header Comment
```bash
./makeHeader.sh <author> <description>
```
### 5. Concatenate Files
```bash
./openAllCode.sh [directory]
```
