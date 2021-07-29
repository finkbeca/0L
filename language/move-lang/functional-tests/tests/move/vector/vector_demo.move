//! account: alice, 90000

//! sender: alice

module {{alice}}::M {
    use 0x1::Vector;
    
    public fun init() : vector<u64> {
        let v = Vector::empty<u64>();
        v
    }

    public fun add(vec : vector<u64>, v: u64) : vector<u64> {
        Vector::push_back(&mut vec, v);
        vec
    }

    
}

//! new-transaction
//! sender: alice
script {
use {{alice}}::M;
     use 0x1::Vector;

    fun main() {
        let x = M::init();
        let y = M::add(x, 2);
        assert(Vector::length(&y) == 1, 2);
    }
}

// check: EXECUTED