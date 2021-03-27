run_dev:
  ./target/release/node-template --tmp --dev

purge:
	./target/release/node-template purge-chain --base-path /tmp/node01 --chain local -y

run_alice_node:	
	./target/release/node-template \
  	--base-path /tmp/alice \
  	--chain local \
  	--alice \
  	--port 30333 \
  	--ws-port 9945 \
  	--rpc-port 9933 \
  	--node-key 0000000000000000000000000000000000000000000000000000000000000001 \
  	--telemetry-url 'wss://telemetry.polkadot.io/submit/ 0' \
  	--validator


run_bob_node:
	./target/release/node-template \
  --base-path /tmp/bob \
  --chain local \
  --bob \
  --port 30334 \
  --ws-port 9946 \
  --rpc-port 9934 \
  --telemetry-url 'wss://telemetry.polkadot.io/submit/ 0' \
  --validator \
  --bootnodes /ip4/127.0.0.1/tcp/30333/p2p/12D3KooWEyoppNCUx8Yx66oV9fJnriXwCcXwDDUA2kj6vnc6iDEp


run_node_1:
	./target/release/node-template \
  --base-path /tmp/node01 \
  --chain ./customSpecRaw.json \
  --port 30333 \
  --ws-port 9945 \
  --rpc-port 9933 \
  --telemetry-url 'wss://telemetry.polkadot.io/submit/ 0' \
  --validator \
  --rpc-methods Unsafe \
  --name MyNode01
  