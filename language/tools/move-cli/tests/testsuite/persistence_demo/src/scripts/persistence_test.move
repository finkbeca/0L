script {
    use 0x2::PersistenceDemo;
    
    // This sender argument was populated by the test harness with a random address for `alice`, which can be accessed with sender variable or the helper `{alice}`
    fun main(sender: signer){ // alice's signer type added in tx.
      let sender = &sender;
      PersistenceDemo::initialize(sender);
      PersistenceDemo::add_stuff(sender);
      assert(PersistenceDemo::length(sender) == 3, 0);
      assert(PersistenceDemo::contains(sender, 1), 1);
    }}

    ///// The tags with `check` matches to a string in the VM output. Here we are checking for a correct execution.
// check: EXECUTED

/*

script {
    use 0x2::PersistenceDemo;
    fun main(sender: signer){
        let sender = &sender;
      assert(PersistenceDemo::length(sender) == 2, 4);
    }
}

///// Checking the VM output for the string ABORTED

// check: ABORTED


///// DEMO 3: State is not initialized in BOB address
///// this will fail because bob does not have the data struct, and we tried to operate on it.
///// This is a new transaction.

script {
    use 0x2::PersistenceDemo;
    fun main(sender: signer){
        let sender = &sender;
        PersistenceDemo::add_stuff(sender);
    }
}

///// Checking the VM output for the string `EXECUTION_FAILURE`

// check: EXECUTION_FAILURE
*/
