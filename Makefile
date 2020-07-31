PASS := ../gnl2/
CFLAGS:= -Werror -Wextra -Wall -I$(PASS)

run:
	gcc $(CFLAGS) -D BUFFER_SIZE=32 test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result1.txt
	gcc $(CFLAGS) -D BUFFER_SIZE=1 test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result2.txt
	gcc $(CFLAGS) -D BUFFER_SIZE=2 test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result3.txt
	gcc $(CFLAGS) -D BUFFER_SIZE=2999 test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result4.txt
	gcc $(CFLAGS) -D BUFFER_SIZE=3000 test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result5.txt
	gcc $(CFLAGS) -D BUFFER_SIZE=3001 test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result6.txt
	gcc $(CFLAGS) -D BUFFER_SIZE=100000 test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result7.txt
	gcc $(CFLAGS) -D BUFFER_SIZE=1000000 test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out > result8.txt
	diff result1.txt result2.txt
	diff result2.txt result3.txt
	diff result3.txt result4.txt
	diff result4.txt result5.txt
	diff result5.txt result6.txt
	diff result6.txt result7.txt
	diff result7.txt result8.txt
	gcc $(CFLAGS) -D BUFFER_SIZE=32 test_stdin.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
	./a.out
	
clean:
	rm result[1-8].txt

fclean: clean
	rm a.out

leakcheck:
	gcc $(CFLAGS) -D BUFFER_SIZE=2 test_files.c $(PASS)get_next_line.c $(PASS)get_next_line_utils.c
