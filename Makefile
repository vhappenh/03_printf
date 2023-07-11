NAME := libftprintf.a

LIBFT := ./libft/libft.a

CFLAGS := -Wall -Werror -Wextra

SRC := ft_printf.c\
		ft_hexa.c\
		ft_numbers.c

OBJ := $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(MAKE) all -C ./libft
	cp $(LIBFT) $(NAME) 
	ar -rs $(NAME) $(OBJ)

clean:
	rm -f $(OBJ) ./libft/*.o

fclean: clean
	rm -f $(NAME) $(LIBFT)

re:		fclean all
