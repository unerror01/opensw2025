

./bin/myapp : ./obj/fun1.o ./obj/fun2.o ./obj/main.o
	gcc -o ./bin/myapp ./obj/fun1.o ./obj/fun2.o ./obj/main.o

./obj/%.o: ./src/%.c
	gcc -c $< -o $@ -I./include

clean:
	rm -f d./bin/myapp ./obj/*.o