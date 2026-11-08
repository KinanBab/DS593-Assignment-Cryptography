# MPC Question

Your task is to implement a simple MPC voting application.

You and 2 of your friends are trying to have a secret ballot vote to determine where to go to dinner,
the options are: "Oleana", "Cuttys", "Sarma", "NeptuneOyster"
(yes, these are the best restaurants in Boston...)

Your implementation goes in `party.js`. The file contains more instructions.

## Running your solution

Make sure you have nodejs installed. We tested this using node `v14` and `v26`. Any recent LTS release should work.

First, install the required dependencies:
```
npm install
```

`npm install` will report some vulnerabilities in the dependencies of the MPC library. You can ignore these:
everything in this assignment runs locally on your machine.

Then, you will need to open 4 terminals, one for the server, and one for each participant.

Run the server first using `node server.js`

When you see a message indicating the server is listening, you can run the parties.
```
# Run each command in a separate terminal window
node party.js Oleana
node party.js Oleana
node party.js Cuttys
```

When you run each party, it connects to the server, and then waits for all other parties
to be connected. When all are connected, the computation begins!

## References

Look at this example for reference [https://github.com/multiparty/jiff-standalone-example/blob/main/party.js](https://github.com/multiparty/jiff-standalone-example/blob/main/party.js).

Also, you can find documentation and a list of JIFF's operation APIs over secret shares here [https://multiparty.org/jiff/docs/jsdoc/module-jiff-client-JIFFClient_SecretShare.html](https://multiparty.org/jiff/docs/jsdoc/module-jiff-client-JIFFClient_SecretShare.html).
