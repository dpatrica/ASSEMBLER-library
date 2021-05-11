SRCS	=	ft_strlen.s \
			ft_strcmp.s \
			ft_write.s \
			ft_read.s  \
			ft_strcpy.s \
			ft_strdup.s
			
NAME	=   libasm.a
HEAD	=	libasm.h
RM		=	rm -f
ARR		=	ar ruc

OBJS	=	$(SRCS:.s=.o)

.s.o:
			nasm -f macho64 $< -o $@

$(NAME):	$(OBJS) $(HEAD)
			$(ARR) $(NAME) $(OBJS)

all:		$(NAME)

clean:
			$(RM) $(OBJS)

fclean:		clean
			$(RM) $(NAME)

re:			fclean all

.PHONY:		all clean fclean re
