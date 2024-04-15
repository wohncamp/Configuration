brew install llvm cmake

echo '\nexport PATH="/usr/local/opt/llvm/bin:$PATH"' >> ~/.zshrc

echo '\nexport MACOSX_DEPLOYMENT_TARGET=13.6' >> ~/.zshrc
echo 'export LDFLAGS="-L/usr/local/opt/llvm/lib"' >> ~/.zshrc
echo 'export CPPFLAGS="-I/usr/local/opt/llvm/include"' >> ~/.zshrc
