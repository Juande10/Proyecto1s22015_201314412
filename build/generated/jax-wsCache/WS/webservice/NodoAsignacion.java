
package webservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para nodoAsignacion complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="nodoAsignacion">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="anterior" type="{http://webservice/}nodoAsignacion" minOccurs="0"/>
 *         &lt;element name="horariofin" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="horarioinicio" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="idbus" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="ruta" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="siguiente" type="{http://webservice/}nodoAsignacion" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "nodoAsignacion", propOrder = {
    "anterior",
    "horariofin",
    "horarioinicio",
    "idbus",
    "ruta",
    "siguiente"
})
public class NodoAsignacion {

    protected NodoAsignacion anterior;
    protected String horariofin;
    protected String horarioinicio;
    protected int idbus;
    protected String ruta;
    protected NodoAsignacion siguiente;

    /**
     * Obtiene el valor de la propiedad anterior.
     * 
     * @return
     *     possible object is
     *     {@link NodoAsignacion }
     *     
     */
    public NodoAsignacion getAnterior() {
        return anterior;
    }

    /**
     * Define el valor de la propiedad anterior.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoAsignacion }
     *     
     */
    public void setAnterior(NodoAsignacion value) {
        this.anterior = value;
    }

    /**
     * Obtiene el valor de la propiedad horariofin.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getHorariofin() {
        return horariofin;
    }

    /**
     * Define el valor de la propiedad horariofin.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setHorariofin(String value) {
        this.horariofin = value;
    }

    /**
     * Obtiene el valor de la propiedad horarioinicio.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getHorarioinicio() {
        return horarioinicio;
    }

    /**
     * Define el valor de la propiedad horarioinicio.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setHorarioinicio(String value) {
        this.horarioinicio = value;
    }

    /**
     * Obtiene el valor de la propiedad idbus.
     * 
     */
    public int getIdbus() {
        return idbus;
    }

    /**
     * Define el valor de la propiedad idbus.
     * 
     */
    public void setIdbus(int value) {
        this.idbus = value;
    }

    /**
     * Obtiene el valor de la propiedad ruta.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getRuta() {
        return ruta;
    }

    /**
     * Define el valor de la propiedad ruta.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setRuta(String value) {
        this.ruta = value;
    }

    /**
     * Obtiene el valor de la propiedad siguiente.
     * 
     * @return
     *     possible object is
     *     {@link NodoAsignacion }
     *     
     */
    public NodoAsignacion getSiguiente() {
        return siguiente;
    }

    /**
     * Define el valor de la propiedad siguiente.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoAsignacion }
     *     
     */
    public void setSiguiente(NodoAsignacion value) {
        this.siguiente = value;
    }

}
