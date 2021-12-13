contract OptimizedContract {
    
    uint a;
    int256 b;
    uint128 f;
    uint128 e;
    uint128 h;
    uint64 c;
    bytes32 d;
    bytes32 g;

    struct person {
        bytes32[] family;
        string name;
        string country;
        bytes32 id;
        uint8 age;
    }

    function f1 (uint x) public returns (bool) {
        uint tempA;
        int tempB;
        for ( uint i = 0 ; i < x ; i++) {
            tempA += i; 
            tempB -= int(i); 
        }
        a += tempA;
        b += tempB;
        return (a > 50 || b > 50) ? true : false;
    }

    function f2 (uint x) public returns (bool) {
        a += x;
        b -= int(x);

        return (a > 50 || b > 50) ? true : false;
    }

    function setA (uint x) external {
        a = x;
    }

    function setB (int x) external {
        b = x;
    }
    
    function greaterThan50 ( uint x ) public returns (bool) {
        return (f2(x) || f1(x)) ? true : false;
    }
}
