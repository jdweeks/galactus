#include <stdlib.h>
#include <string.h>

int main()
{
        int bytes = 1024*1024;
        while(1)
        {
                memset(malloc(bytes),0,bytes);
        }
}
