# gnl-tester
## Initial setting
Set the GNL-project pass in `Makefile`
### Example
Set PASS as  
`PASS := ../gnl/`  
if you work in the directory like this.
```
.
├── gnl(project directory)
|	├── get_next_line.c
│   ├── get_next_line.h
|	├── get_next_line_util.c
|	├── get_next_line_bonus.c
│   ├── get_next_line_bonus.h
|	└── get_next_line_util_bonus.c
├── gnl-tester
│	├── README.sh
│	├── test_files.c
|	├── test_strdin.c
|	├──...
|...
```
## Run
`make run`  
or only  
`make`

## Delete result files
`make clean`

*I wish you success with your project!*
