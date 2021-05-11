#include "libasm.h"

int main()
{
    int i;
    int k;
    int fd = 123;
    char *kek;
    char buf[7] = "z";
    buf[6] = '\0';
    char *asd = "safsdf";

    kek = ft_strdup(asd);
    printf("\nstrdupKEK:%s\n", kek);
    printf("\nstrlenASD:%d\n", ft_strlen(asd));
    fd = open("kek.txt", O_RDONLY);
    printf("\nkek_fd:%d\n", fd);
    printf("\nreturnREAD:%d\n", (i = ft_read(fd, buf, 5)));
    ft_write(1, "write BUF-->", 12);
    printf("\nreturnWRITE:%d\n", (i = ft_write(1, buf, ft_strlen(buf))));
    printf("\nstrcmp_before_strcpy:%d\n", ft_strcmp(buf, asd));
    printf("\nbuf_before_strcpy:%s\n", buf);
    kek = ft_strcpy(buf, asd);
    printf("\nbuf_after_strcpy:%s\nkek(return strcpy):%s\n", buf, kek);
    printf("\nstrcmp_after_strcpy:%d\n", ft_strcmp(buf, asd));
    // printf("%s\n", strerror(errno));
    close(fd);
    return(0);
}
