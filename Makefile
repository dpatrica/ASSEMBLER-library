SRCS	=	ft_strlen.s \
			ft_strcmp.s \
			ft_write.s \
			ft_read.s  \
			# ft_strcpy.s \
			ft_strdup.s
			
NAME	=   libasm.a
HEAD	=	libasm.h
GCC		=   gcc -Wall -Wextra -Werror
SOBJS	=	$(SRCS:.s=.o)
all:		$(NAME)
$(NAME):	$(SOBJS) $(HEAD)
			ar ruc  $(NAME) $(SOBJS)
test:		$(NAME) main.c
			$(GCC) main.c $(NAME) -o test
			./test
.PHONY:		all clean fclean re test
.s.o:
			nasm -f macho64 $< -o $@
clean:
			rm -f $(SOBJS)
fclean:		clean
			rm -f $(NAME) test
re:			fclean all