script {
    use 0x2::PersistenceDemo;
    fun main(sender: signer){
        let sender = &sender;
        PersistenceDemo::add_stuff(sender);
    }
}

///// Checking the VM output for the string `EXECUTION_FAILURE`

// check: EXECUTION_FAILURE