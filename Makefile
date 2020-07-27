PASS := ../gnl/
CFLAGS:= -Werror -Wextra -Wall -D BUFFER_SIZE=32 -I$(PASS)

run:
	gcc $(CFLAGS) test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result1.txt
	gcc $(CFLAGS) test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result2.txt
	gcc $(CFLAGS) test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result3.txt
	gcc $(CFLAGS) test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result4.txt
	gcc $(CFLAGS) test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result5.txt
	gcc $(CFLAGS) test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result6.txt
	gcc $(CFLAGS) test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result7.txt
	gcc $(CFLAGS) test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result8.txt
	diff result.txt result1.txt
	diff result.txt result2.txt
	diff result.txt result3.txt
	diff result.txt result4.txt
	diff result.txt result5.txt
	diff result.txt result6.txt
	diff result.txt result7.txt
	diff result.txt result8.txt
	gcc $(CFLAGS) test_stdin.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out
	
clean:
	rm result[1-8].txt
