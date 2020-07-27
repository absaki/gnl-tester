#include <stdio.h>
#include <fcntl.h>
#include "get_next_line.h"

int main(void)
{
	int fd =0;
	int return_num;
	char **output;
	output = malloc(sizeof(char **));
	while (1)
	{
		return_num = get_next_line(fd, output);
		printf("std in return = %d\nline = %s\n", return_num, *output);
		if (return_num == 0)
			break;
	}
}