script {
    use 0x2::PersistenceDemo;
    fun main(sender: signer){
        let sender = &sender;
      assert(PersistenceDemo::length(sender) == 2, 4);
    }
}
// check: ABORTED
