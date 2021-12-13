contract UnoptimizedContract {
    
    uint a;
    int256 b;
    uint64 c;
    bytes32 d;
    uint128 e;
    uint128 f;
    bytes32 g;
    uint128 h;

    struct person {
        string name;
        uint8 age;
        string country;
        bytes32 id;
        bytes32[] family;
    }

    function f1 (uint x) public returns (bool) {
        for ( uint i = 0 ; i < x ; i++) {
            a += i; 
        }
        for ( int j = 0 ; j < int(x); j++) {
            b -= j; 
        }
        return (a > 50 || b > 50) ? true : false;
    }

    function f2 (uint x) public returns (bool) {
        a += x;
        b -= int(x);

        return (a > 50 || b > 50) ? true : false;
    }

    function setA (uint x) public {
        a = x;
    }

    function setB (int x) public {
        b = x;
    }
    
    function greaterThan50 ( uint x ) public returns (bool) {
        if (f1(x)) {
            return true;
        } else if (f2(x)) {
            return true;
        } else {
            return false;
        }
    }
}
