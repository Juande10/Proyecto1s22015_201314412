
package webservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para nodoAdministrador complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="nodoAdministrador">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="izq" type="{http://webservice/}nodoAdministrador" minOccurs="0"/>
 *         &lt;element name="der" type="{http://webservice/}nodoAdministrador" minOccurs="0"/>
 *         &lt;element name="contrasena" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="correo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="fe" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "nodoAdministrador", propOrder = {
    "izq",
    "der",
    "contrasena",
    "correo",
    "fe"
})
public class NodoAdministrador {

    protected NodoAdministrador izq;
    protected NodoAdministrador der;
    protected String contrasena;
    protected String correo;
    protected int fe;

    /**
     * Obtiene el valor de la propiedad izq.
     * 
     * @return
     *     possible object is
     *     {@link NodoAdministrador }
     *     
     */
    public NodoAdministrador getIzq() {
        return izq;
    }

    /**
     * Define el valor de la propiedad izq.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoAdministrador }
     *     
     */
    public void setIzq(NodoAdministrador value) {
        this.izq = value;
    }

    /**
     * Obtiene el valor de la propiedad der.
     * 
     * @return
     *     possible object is
     *     {@link NodoAdministrador }
     *     
     */
    public NodoAdministrador getDer() {
        return der;
    }

    /**
     * Define el valor de la propiedad der.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoAdministrador }
     *     
     */
    public void setDer(NodoAdministrador value) {
        this.der = value;
    }

    /**
     * Obtiene el valor de la propiedad contrasena.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getContrasena() {
        return contrasena;
    }

    /**
     * Define el valor de la propiedad contrasena.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setContrasena(String value) {
        this.contrasena = value;
    }

    /**
     * Obtiene el valor de la propiedad correo.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCorreo() {
        return correo;
    }

    /**
     * Define el valor de la propiedad correo.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCorreo(String value) {
        this.correo = value;
    }

    /**
     * Obtiene el valor de la propiedad fe.
     * 
     */
    public int getFe() {
        return fe;
    }

    /**
     * Define el valor de la propiedad fe.
     * 
     */
    public void setFe(int value) {
        this.fe = value;
    }

}
