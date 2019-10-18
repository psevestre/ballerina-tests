import ballerina/io;
import carvajal/consultas.cvj.viajes as viajes;


# Prints `Hello World`.

public function main() {
    io:println("Starting Worker");

    worker mainWorker {

        // Eternal loop
        var response = viajes:ConsultaCvjZzWshHeaderUnigisWs();
        io:println(response);
    }

    _ = wait  { mainWorker };

    io:println("Finished 1");
}
