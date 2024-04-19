NAME=ircserv

SRC_PATH=./src

SRC_FILES= $(SRC_PATH)/main.cpp \
	$(SRC_PATH)/User.cpp \
	$(SRC_PATH)/Server.cpp \
	$(SRC_PATH)/Command.cpp \
	$(SRC_PATH)/Channel.cpp \
	$(SRC_PATH)/Utils.cpp \
	$(SRC_PATH)/Bot.cpp \

OBJS=$(SRC_FILES:.cpp=.o)

all: $(NAME)

$(NAME): $(OBJS)
	@echo "Compiling $(NAME)..."
	c++ -std=c++98 -Wall -Wextra -Werror $(OBJS) -o $(NAME)

%.o: %.cpp
	@echo "Compiling $<..."
	c++ -std=c++98 -Wall -Wextra -Werror -c $< -o $@

clean:
	@echo "Cleaning..."
	rm -f $(OBJS)

fclean: clean
	@echo "Fcleaning..."
	rm -f $(NAME)

re: fclean all

.PHONY : all clean fclean re
