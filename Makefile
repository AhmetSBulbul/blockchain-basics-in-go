contract:
	echo "Compile contracts"
	solc --optimize --abi --bin ./contracts/SimpleStorage.sol -o build --overwrite
	abigen --abi=./build/SimpleStorage.abi --bin=./build/SimpleStorage.bin --pkg=api --out=./api/SimpleStorage.go