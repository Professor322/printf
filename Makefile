# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: djon-con <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/20 17:26:14 by djon-con          #+#    #+#              #
#    Updated: 2019/04/16 17:39:09 by djon-con         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS = -Wall -Wextra -Werror
NAME = libftprintf.a
SRC = atoi_move.c \
	clean_and_enlarge_vec.c \
	extract_float_values.c \
	fill_helper.c \
	float.c \
	ft_init.c \
	ft_parse.c \
	ft_parse_part_two.c \
	ft_printf.c \
	get_va_arg.c \
	get_va_digit_values.c \
	get_wp.c \
	itoa_base_printf.c \
	long_arithmetic.c \
	print_arg.c \
	print_buf.c \
	print_char.c \
	print_float.c \
	print_long.c \
	print_something.c \
	print_string.c \
	set_precision.c \
	string_helper.c \
	vector_operations.c \
$(addprefix libft/, srcs/ft_lstcount.c srcs/get_next_line.c srcs/ft_lstrm.c srcs/ft_realloc.c srcs/ft_lstpop.c srcs/ft_wordcount.c srcs/ft_abs.c srcs/ft_isspace.c srcs/ft_lstfree.c srcs/ft_push_back.c srcs/ft_lstnew.c srcs/ft_lstdel.c srcs/ft_lstdelone.c srcs/ft_lstadd.c srcs/ft_lstiter.c srcs/ft_lstmap.c srcs/ft_strjoin.c srcs/ft_strsub.c srcs/ft_strnequ.c srcs/ft_strequ.c srcs/ft_strmapi.c srcs/ft_strmap.c srcs/ft_striteri.c srcs/ft_striter.c srcs/ft_strclr.c srcs/ft_strdel.c srcs/ft_strnew.c srcs/ft_strtrim.c srcs/ft_itoa.c srcs/ft_strsplit.c srcs/ft_putendl_fd.c srcs/ft_putendl.c srcs/ft_putchar.c srcs/ft_putchar_fd.c srcs/ft_putstr.c srcs/ft_putstr_fd.c srcs/ft_putnbr_fd.c srcs/ft_putnbr.c srcs/ft_tolower.c srcs/ft_toupper.c srcs/ft_isprint.c srcs/ft_isascii.c srcs/ft_isalnum.c srcs/ft_isdigit.c srcs/ft_isalpha.c srcs/ft_atoi.c srcs/ft_strncmp.c srcs/ft_strcmp.c srcs/ft_strnstr.c srcs/ft_strstr.c srcs/ft_strrchr.c srcs/ft_strchr.c srcs/ft_strlcat.c srcs/ft_strncat.c srcs/ft_strcat.c srcs/ft_strncpy.c srcs/ft_strcpy.c srcs/ft_strdup.c srcs/ft_strlen.c srcs/ft_memcmp.c srcs/ft_memchr.c srcs/ft_memmove.c srcs/ft_memccpy.c srcs/ft_memcpy.c srcs/ft_memset.c srcs/ft_memalloc.c srcs/ft_memdel.c srcs/ft_bzero.c srcs/ft_vec_init.c)
HEADERS = header.h $(addprefix libft/includes/, libft.h get_next_line.h)
OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar -rc $@ $(OBJ)

%.o: %.c $(HEADERS)
	@gcc $(FLAGS) -I libft/includes -c $< -o $@

clean:
	@-rm -f $(OBJ)
	@make clean -C libft

fclean: clean
	@-rm -f $(NAME)
	@make fclean -C libft

re: fclean all
