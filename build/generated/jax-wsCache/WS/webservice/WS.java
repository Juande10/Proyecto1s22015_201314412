
package webservice;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.10-b140803.1500
 * Generated source version: 2.2
 * 
 */
@WebService(name = "WS", targetNamespace = "http://webservice/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface WS {


    /**
     * 
     * @param name
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "hello", targetNamespace = "http://webservice/", className = "webservice.Hello")
    @ResponseWrapper(localName = "helloResponse", targetNamespace = "http://webservice/", className = "webservice.HelloResponse")
    @Action(input = "http://webservice/WS/helloRequest", output = "http://webservice/WS/helloResponse")
    public String hello(
        @WebParam(name = "name", targetNamespace = "")
        String name);

    /**
     * 
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "ping", targetNamespace = "http://webservice/", className = "webservice.Ping")
    @ResponseWrapper(localName = "pingResponse", targetNamespace = "http://webservice/", className = "webservice.PingResponse")
    @Action(input = "http://webservice/WS/pingRequest", output = "http://webservice/WS/pingResponse")
    public String ping();

}