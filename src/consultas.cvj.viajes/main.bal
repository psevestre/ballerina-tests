import ballerina/io;
import wso2/soap;

public function ConsultaCvjZzWshHeaderUnigisWs() returns @tainted (soap:SoapResponse|error) {
    soap:Soap11Client soapClient = new("http://localhost:8088//mockcarvajal-unigisSOAP");

    xmlns "http://com.carvajal.service" as com;

    xml body = xml `<com:ConsultaCvjZzWshHeaderUnigisWs />`;

    var response = soapClient->sendReceive("",body);
    return response;

}

public function main() {
    io:println("Hello World!");
}
