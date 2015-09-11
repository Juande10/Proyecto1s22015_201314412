
package webservice;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the webservice package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _CrearAdministrador_QNAME = new QName("http://webservice/", "CrearAdministrador");
    private final static QName _LoginAdministradorResponse_QNAME = new QName("http://webservice/", "LoginAdministradorResponse");
    private final static QName _HelloResponse_QNAME = new QName("http://webservice/", "helloResponse");
    private final static QName _LoginAdministrador_QNAME = new QName("http://webservice/", "LoginAdministrador");
    private final static QName _LoginEstacionGeneral_QNAME = new QName("http://webservice/", "LoginEstacionGeneral");
    private final static QName _LoginEstacionGeneralResponse_QNAME = new QName("http://webservice/", "LoginEstacionGeneralResponse");
    private final static QName _GraficarAdministradoresResponse_QNAME = new QName("http://webservice/", "GraficarAdministradoresResponse");
    private final static QName _Hello_QNAME = new QName("http://webservice/", "hello");
    private final static QName _GraficarAdministradores_QNAME = new QName("http://webservice/", "GraficarAdministradores");
    private final static QName _LoginEstacionClaveResponse_QNAME = new QName("http://webservice/", "LoginEstacionClaveResponse");
    private final static QName _LoginEstacionClave_QNAME = new QName("http://webservice/", "LoginEstacionClave");
    private final static QName _CrearAdministradorResponse_QNAME = new QName("http://webservice/", "CrearAdministradorResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: webservice
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link CrearAdministrador }
     * 
     */
    public CrearAdministrador createCrearAdministrador() {
        return new CrearAdministrador();
    }

    /**
     * Create an instance of {@link LoginAdministradorResponse }
     * 
     */
    public LoginAdministradorResponse createLoginAdministradorResponse() {
        return new LoginAdministradorResponse();
    }

    /**
     * Create an instance of {@link LoginAdministrador }
     * 
     */
    public LoginAdministrador createLoginAdministrador() {
        return new LoginAdministrador();
    }

    /**
     * Create an instance of {@link LoginEstacionGeneral }
     * 
     */
    public LoginEstacionGeneral createLoginEstacionGeneral() {
        return new LoginEstacionGeneral();
    }

    /**
     * Create an instance of {@link HelloResponse }
     * 
     */
    public HelloResponse createHelloResponse() {
        return new HelloResponse();
    }

    /**
     * Create an instance of {@link GraficarAdministradores }
     * 
     */
    public GraficarAdministradores createGraficarAdministradores() {
        return new GraficarAdministradores();
    }

    /**
     * Create an instance of {@link LoginEstacionGeneralResponse }
     * 
     */
    public LoginEstacionGeneralResponse createLoginEstacionGeneralResponse() {
        return new LoginEstacionGeneralResponse();
    }

    /**
     * Create an instance of {@link GraficarAdministradoresResponse }
     * 
     */
    public GraficarAdministradoresResponse createGraficarAdministradoresResponse() {
        return new GraficarAdministradoresResponse();
    }

    /**
     * Create an instance of {@link Hello }
     * 
     */
    public Hello createHello() {
        return new Hello();
    }

    /**
     * Create an instance of {@link LoginEstacionClave }
     * 
     */
    public LoginEstacionClave createLoginEstacionClave() {
        return new LoginEstacionClave();
    }

    /**
     * Create an instance of {@link CrearAdministradorResponse }
     * 
     */
    public CrearAdministradorResponse createCrearAdministradorResponse() {
        return new CrearAdministradorResponse();
    }

    /**
     * Create an instance of {@link LoginEstacionClaveResponse }
     * 
     */
    public LoginEstacionClaveResponse createLoginEstacionClaveResponse() {
        return new LoginEstacionClaveResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CrearAdministrador }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice/", name = "CrearAdministrador")
    public JAXBElement<CrearAdministrador> createCrearAdministrador(CrearAdministrador value) {
        return new JAXBElement<CrearAdministrador>(_CrearAdministrador_QNAME, CrearAdministrador.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginAdministradorResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice/", name = "LoginAdministradorResponse")
    public JAXBElement<LoginAdministradorResponse> createLoginAdministradorResponse(LoginAdministradorResponse value) {
        return new JAXBElement<LoginAdministradorResponse>(_LoginAdministradorResponse_QNAME, LoginAdministradorResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link HelloResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice/", name = "helloResponse")
    public JAXBElement<HelloResponse> createHelloResponse(HelloResponse value) {
        return new JAXBElement<HelloResponse>(_HelloResponse_QNAME, HelloResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginAdministrador }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice/", name = "LoginAdministrador")
    public JAXBElement<LoginAdministrador> createLoginAdministrador(LoginAdministrador value) {
        return new JAXBElement<LoginAdministrador>(_LoginAdministrador_QNAME, LoginAdministrador.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginEstacionGeneral }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice/", name = "LoginEstacionGeneral")
    public JAXBElement<LoginEstacionGeneral> createLoginEstacionGeneral(LoginEstacionGeneral value) {
        return new JAXBElement<LoginEstacionGeneral>(_LoginEstacionGeneral_QNAME, LoginEstacionGeneral.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginEstacionGeneralResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice/", name = "LoginEstacionGeneralResponse")
    public JAXBElement<LoginEstacionGeneralResponse> createLoginEstacionGeneralResponse(LoginEstacionGeneralResponse value) {
        return new JAXBElement<LoginEstacionGeneralResponse>(_LoginEstacionGeneralResponse_QNAME, LoginEstacionGeneralResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GraficarAdministradoresResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice/", name = "GraficarAdministradoresResponse")
    public JAXBElement<GraficarAdministradoresResponse> createGraficarAdministradoresResponse(GraficarAdministradoresResponse value) {
        return new JAXBElement<GraficarAdministradoresResponse>(_GraficarAdministradoresResponse_QNAME, GraficarAdministradoresResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Hello }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice/", name = "hello")
    public JAXBElement<Hello> createHello(Hello value) {
        return new JAXBElement<Hello>(_Hello_QNAME, Hello.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GraficarAdministradores }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice/", name = "GraficarAdministradores")
    public JAXBElement<GraficarAdministradores> createGraficarAdministradores(GraficarAdministradores value) {
        return new JAXBElement<GraficarAdministradores>(_GraficarAdministradores_QNAME, GraficarAdministradores.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginEstacionClaveResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice/", name = "LoginEstacionClaveResponse")
    public JAXBElement<LoginEstacionClaveResponse> createLoginEstacionClaveResponse(LoginEstacionClaveResponse value) {
        return new JAXBElement<LoginEstacionClaveResponse>(_LoginEstacionClaveResponse_QNAME, LoginEstacionClaveResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginEstacionClave }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice/", name = "LoginEstacionClave")
    public JAXBElement<LoginEstacionClave> createLoginEstacionClave(LoginEstacionClave value) {
        return new JAXBElement<LoginEstacionClave>(_LoginEstacionClave_QNAME, LoginEstacionClave.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CrearAdministradorResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://webservice/", name = "CrearAdministradorResponse")
    public JAXBElement<CrearAdministradorResponse> createCrearAdministradorResponse(CrearAdministradorResponse value) {
        return new JAXBElement<CrearAdministradorResponse>(_CrearAdministradorResponse_QNAME, CrearAdministradorResponse.class, null, value);
    }

}
