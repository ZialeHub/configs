alias GCC='clang -Wall -Wextra -Werror -g'
alias C++='c++ -Wall -Wextra -Werror -g'
alias norme='norminette -R CheckForbiddenHeaderSource'
alias normeh='norminette -R CheckDefine'

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
