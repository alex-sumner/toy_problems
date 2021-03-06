1. Executing the same contract code twice with the same inputs will use the same quantity of gas each time.

False, this depends on contract state as well. For example, writing something to storage is much more expensive (20000) if you are writing to a new position than if you are changing an existing value (5000).

2. Executing the same contract code twice with the same inputs and initial state will cost the same quantity of gas each time.

False, the gas costs of opcodes are sometimes changed. Remember this is why calling transfer() is no longer recommended.

3. A transaction may never be mined, even if it is accepted by a node.

True, your transaction may be evicted from the pool of transactions waiting to be mined if gas prices rise and it has insufficient gas.

4. Miners always pick the transactions with the highest gas price to mine first.

False, they often do this but are free to do other things, and may do for a number of reasons. Firstly, picking the highest priced transaction may not be optimal, picking two medium sized ones that will both fit in the block could be better than picking one big one that takes all the space. Secondly, they may choose to mine their own transactions first. Thirdly, they could have an off chain agreement with some third party to include their transactions first.

Recommended reading: 

https://www.paradigm.xyz/2020/08/ethereum-is-a-dark-forest/

https://samczsun.com/escaping-the-dark-forest/



