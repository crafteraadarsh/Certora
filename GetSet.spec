// This is a specification for a simple contract with getter and setter functions.
 
methods {
    function get() external returns(uint) envfree;
    function set(uint) external;
}

// The stored data after calling `set` should be equal to the value passed to `set`
rule setAndGet {
    env e; 
    uint value;
    set(e, value);

    assert get() == value,
        "The stored data after calling `set` should be equal to the value passed to `set`";
}

// The stored data should remain unchanged after calling `get`
rule getIsSame {
    env e;
    mathint storedData_before = get();
    get();
    mathint storedData_after = get();
    assert storedData_after == storedData_before,
        "The stored data should remain unchanged after calling `get`";
}
