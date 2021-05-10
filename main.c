#include "libasm.h"

int main()
{
    int i = 0;
    int k = 0;

    char lek[20] = "1234";
    char lal[10] = "s1";
    char *knull = NULL;
    knull = ft_strcpy(lal, lek);

    printf("s1:%s\ns2:%s\n", lek, lal);
    return(0);
}
