# setup.sh
#!/bin/bash
echo "Installing Python dependencies..."
pip install -r requirements.txt

echo "Checking for libomp..."
if ! brew ls --versions libomp > /dev/null; then
    echo "libomp not found, installing..."
    brew install libomp
else
    echo "libomp already installed."
fi
