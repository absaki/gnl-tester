#include <stdio.h>
#include <fcntl.h>
#include "get_next_line.h"

int main(void)
{
	int fd;
	int return_num;
	char **output;
	char *files[9] = {"empty.txt",
					  "1char.txt",
					  "single_line.txt",
					  "60_lines.txt",
					  "3000chars_1line.txt",
					  "3000x300lines.txt",
					  "long.txt",
					  "long_line.txt",
					  "magna_carta.txt"};

	for (int i = 0; i < 9; i++)
	{
		fd = open(files[i], O_RDONLY);
		printf("\n\n======fd = %d======\nfilename = %s\n\n", fd, files[i]);
		int j = 1;
		while (1)
		{

			output = malloc(sizeof(char **));
			return_num = get_next_line(fd, output);
			if (j == 1 || return_num != 1)
				printf("line%d return = %d\nline = %s\n", j++, return_num, *output);
			else
				j++;
			free(output);
			if (return_num != 1)
				break;
		}
	}
}