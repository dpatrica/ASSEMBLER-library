#ifndef LIBASM_H
# define LIBASM_H

# include <unistd.h>
# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <sys/stat.h>
# include <fcntl.h>
# include <errno.h>

int		ft_strlen(const char *str);
int		ft_write(unsigned int fd, const char *buf, size_t count);
int		ft_read(int fd, void *buf, size_t count);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strcpy(char *dest, const char *src);
char	*ft_strdup(const char *s);

#endif
