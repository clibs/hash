
test: hash.c
	@$(CC) -std=c99 -DTEST_HASH $^ -o $@
	@./test

clean:
	rm -f test

.PHONY: test clean