# Exploring Mina Protocol

## Resources

- https://minaprotocol.com/
- https://github.com/MinaProtocol
- https://protokit.dev/
- https://en.wikipedia.org/wiki/Finite_field_arithmetic
- https://www.poseidon-hash.info/

## Notes

- Mina uses infinitely recursive zero knowledge proofs to create a 22KB blockchain for proving anything and enabling privacy-first applications.

- a ZK proof is a cryptographic technique that allows one party to prove the truth of a statement to another party without revealing any specific details about the statement.

- ZK-powered programs that are Turing complete, and offer enhanced privacy, off-chain computation, and composability with no gas fees.

- All inputs are private by default and exist only on the user's local machine when the smart contract runs. The Mina network never sees private inputs.

- Every Mina smart contract includes eight on-chain state variables that each store almost 256 bits of information. In more complex smart contracts, these state variables can store commitments to off-chain storage (for example, commitments for the hash of a file, the root of a Merkle tree, and so on).

- Mina patterns can create a whistleblower system, or anonymous DAO voting

- Poseidon hash function, is optimized for fast performance inside zero knowledge proof systems

- zkApp smart contracts are run off chain. zkApp smart contracts are executed locally

- While most protocols have just one primary group of node operators (often called miners, validators, or block producers), Mina has a second group — the SNARK worker. SNARK workers are integral to the Mina network's health because these nodes are responsible for snarking, or producing SNARK proofs, of transactions in the network. By producing these proofs, snark workers help maintain the succinctness of the Mina blockchain.

### Code notes

- `init()` - Similar to the constructor in Solidity, it's where you define any set up that needs to happen before users begin interacting with the contract.

- The `@method` decorator tells o1js to: Allow users to call this method, Generate a zero knowledge proof (ZKP) of its execution

- For practical purposes, the Field type is similar to the uint256 type in Solidity. It can store large integers and addition, subtraction, and multiplication all work as expected. The only caveats are division and what happens in the event of an overflow. 

- o1js uses a single network request to retrieve all on-chain state values simultaneously.

- the `equals()` and `or()` methods are used instead of the JavaScript operators (`===`, and `||`). The built-in o1js methods have the same effect, but they work with o1js types and their execution can be verified using a zero knowledge proof.

## Instructions

### With Docker

```bash
git clone https://github.com/Neal-C/exploring_minaprotocol.git
``` 

```bash
cd exploring_minaprotocol
```

```bash
docker build -t neal-c-minaprotocol:latest .
```

```bash
docker run --name neal-c-minaprotocol neal-c-minaprotocol:latest
```

### With local installation

Requirements: Bun >= 1.2.20

```bash
git clone https://github.com/Neal-C/exploring_minaprotocol.git
``` 

```bash
cd exploring_minaprotocol
```

```bash
bun install
```

```bash
bun run src/main.ts
```

```bash
bun test --timeout 20000
```