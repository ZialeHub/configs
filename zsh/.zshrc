alias GCC='gcc -Wall -Wextra -Werror -g'
alias C++='c++ -Wall -Wextra -Werror'
alias norme='norminette -R CheckForbiddenHeaderSource'
alias normeh='norminette -R CheckDefine'

function pushswap() {
	ARG=$(seq 1 $1 | shuf | tr '\n' ' ')
	[ -f tmp ] && rm -f tmp
	./push_swap $ARG > tmp
	cat tmp | wc -l
	cat tmp | ./checker_linux $ARG
	rm -f tmp
}

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="zsh2000"
export ZSH_2000_DISABLE_RIGHT_PROMPT='true'
export ZSH_2000_DEFAULT_USER='YOUR_USER_NAME'
export ZSH_2000_DISABLE_STATUS='true'
export ZSH_2000_DISABLE_GIT_STATUS='true'
export ZSH_2000_DISABLE_RVM='true'
plugins=(git)
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh
