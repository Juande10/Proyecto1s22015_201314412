
package webservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para nodoEstacionGeneral complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="nodoEstacionGeneral">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="izq" type="{http://webservice/}nodoEstacionGeneral" minOccurs="0"/>
 *         &lt;element name="der" type="{http://webservice/}nodoEstacionGeneral" minOccurs="0"/>
 *         &lt;element name="contrasena" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="fe" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="id" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="nombre" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "nodoEstacionGeneral", propOrder = {
    "izq",
    "der",
    "contrasena",
    "fe",
    "id",
    "nombre"
})
public class NodoEstacionGeneral {

    protected NodoEstacionGeneral izq;
    protected NodoEstacionGeneral der;
    protected String contrasena;
    protected int fe;
    protected int id;
    protected String nombre;

    /**
     * Obtiene el valor de la propiedad izq.
     * 
     * @return
     *     possible object is
     *     {@link NodoEstacionGeneral }
     *     
     */
    public NodoEstacionGeneral getIzq() {
        return izq;
    }

    /**
     * Define el valor de la propiedad izq.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoEstacionGeneral }
     *     
     */
    public void setIzq(NodoEstacionGeneral value) {
        this.izq = value;
    }

    /**
     * Obtiene el valor de la propiedad der.
     * 
     * @return
     *     possible object is
     *     {@link NodoEstacionGeneral }
     *     
     */
    public NodoEstacionGeneral getDer() {
        return der;
    }

    /**
     * Define el valor de la propiedad der.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoEstacionGeneral }
     *     
     */
    public void setDer(NodoEstacionGeneral value) {
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

    /**
     * Obtiene el valor de la propiedad id.
     * 
     */
    public int getId() {
        return id;
    }

    /**
     * Define el valor de la propiedad id.
     * 
     */
    public void setId(int value) {
        this.id = value;
    }

    /**
     * Obtiene el valor de la propiedad nombre.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * Define el valor de la propiedad nombre.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNombre(String value) {
        this.nombre = value;
    }

}
