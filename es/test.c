#include <stdio.h>

int main(int argc, char **argv)
{
    void (*fp)();

    fp = (void(*)()) 0xff;
}

