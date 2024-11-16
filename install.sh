ALIAS_VE="alias ve='docker run --rm -it -v $PWD:/tmp -w /tmp valgrind'"

echo "\033[1;32mBuilding valgrind docker image...\033[0m"
docker build -t valgrind .

echo "\033[1;32mInstalling alias ve for valgrind...\033[0m"

if [ -f ~/.zshrc ]; then
  if grep -q "alias ve" ~/.zshrc; then
    echo "\033[1;31malias ve already exists in ~/.zshrc\033[0m"
    exit 1
  fi
    echo $ALIAS_VE >> ~/.zshrc
fi

if [ -f ~/.bashrc ]; then
    if grep -q "alias ve" ~/.zshrc; then
      echo "\033[1;31malias ve already exists in ~/.bashrc\033[0m"
      exit 1
    fi
    echo $ALIAS_VE >> ~/.bashrc
fi

echo "\033[1;32mAlias ve installed. Restart your terminal to use it.\033[0m"