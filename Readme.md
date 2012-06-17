
# Hash

  C pointer hash.

## Example

```c
hash_t *hash = hash_new();
hash_set(hash, "name", "tobi");
hash_set(hash, "species", "ferret");
hash_set(hash, "age", "2");

hash_each(hash, {
  printf("%s: %s\n", key, (char *) val);
});

hash_free(hash);
```

yields:

```
species: ferret
age: 2
name: tobi
```

## API

```c
/*
 * Hash type.
 */

typedef khash_t(ptr) hash_t;

/*
 * Allocate a new hash.
 */

#define hash_new() kh_init(ptr)

/*
 * Destroy the hash.
 */

#define hash_free(self) kh_destroy(ptr, self)

/*
 * Hash size.
 */

#define hash_size kh_size

/*
 * Iterate hash keys and ptrs, populating
 * `key` and `val`.
 */

#define hash_each(self, block);

/*
 * Iterate hash keys, populating `key`.
 */

#define hash_each_key(self, block);

/*
 * Iterate hash ptrs, populating `val`.
 */

#define hash_each_val(self, block);

// protos

void
hash_set(hash_t *self, char *key, void *val);

void *
hash_get(hash_t *self, char *key);

int
hash_has(hash_t *self, char *key);

void
hash_del(hash_t *self, char *key);
````