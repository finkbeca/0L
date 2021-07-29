# Testing and Publishing Third Party Modules

This guide will walk through the process of publishing, testing and verifying a third party module. In this guide we will be using demo.move 
## Functional Tests
---

### Testing

### Publishing


## Formal Verification
---

This is a step by step guide to verifying the demo.move module at diem/language/move-stdlib/demo/demo.move
1. [Install move prover](../language/move-prover/doc/userinstall.md) 
> Note on the current version of Diem, Boogie 2.8.32 may need to be manually install to work
2.  As mentioned above to run the prover use the command ```cargo run --release --quiet --package move-prover --``` or set an alias to this in your shell's configuration file
3.  Move to the directory of demo.move
```shell script
cd <full_path>/diem/language/move-stdlib/demo
```

4. Run the script below to verify demo.move
```shell script
cargo run --release --quiet --package move-prover -- --Dependency <full_path>/diem/language/move-stdlib demo.move
``` 
Dependencies refer to all preexisting modules used within demo.move, this path can also be preset in the configuration file. 

The solver will run and display results of the verification in terminal, the prover will also place the resulting boogie code in ```output.bpl```