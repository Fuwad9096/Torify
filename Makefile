all:
    gcc torify.c -o torify.so -fPIC -shared -ldl -D_GNU_SOURCE 

