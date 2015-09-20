
package webservice;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para nodoChofer complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="nodoChofer">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="izq" type="{http://webservice/}nodoChofer" minOccurs="0"/>
 *         &lt;element name="der" type="{http://webservice/}nodoChofer" minOccurs="0"/>
 *         &lt;element name="ListaBuses" type="{http://www.w3.org/2001/XMLSchema}int" maxOccurs="unbounded" minOccurs="0"/>
 *         &lt;element name="cadena" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="apellido" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="contrasena" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="fe" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="fechas" type="{http://webservice/}listaFechas" minOccurs="0"/>
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
@XmlType(name = "nodoChofer", propOrder = {
    "izq",
    "der",
    "listaBuses",
    "cadena",
    "apellido",
    "contrasena",
    "fe",
    "fechas",
    "id",
    "nombre"
})
public class NodoChofer {

    protected NodoChofer izq;
    protected NodoChofer der;
    @XmlElement(name = "ListaBuses", nillable = true)
    protected List<Integer> listaBuses;
    protected String cadena;
    protected String apellido;
    protected String contrasena;
    protected int fe;
    protected ListaFechas fechas;
    protected int id;
    protected String nombre;

    /**
     * Obtiene el valor de la propiedad izq.
     * 
     * @return
     *     possible object is
     *     {@link NodoChofer }
     *     
     */
    public NodoChofer getIzq() {
        return izq;
    }

    /**
     * Define el valor de la propiedad izq.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoChofer }
     *     
     */
    public void setIzq(NodoChofer value) {
        this.izq = value;
    }

    /**
     * Obtiene el valor de la propiedad der.
     * 
     * @return
     *     possible object is
     *     {@link NodoChofer }
     *     
     */
    public NodoChofer getDer() {
        return der;
    }

    /**
     * Define el valor de la propiedad der.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoChofer }
     *     
     */
    public void setDer(NodoChofer value) {
        this.der = value;
    }

    /**
     * Gets the value of the listaBuses property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the listaBuses property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getListaBuses().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link Integer }
     * 
     * 
     */
    public List<Integer> getListaBuses() {
        if (listaBuses == null) {
            listaBuses = new ArrayList<Integer>();
        }
        return this.listaBuses;
    }

    /**
     * Obtiene el valor de la propiedad cadena.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getCadena() {
        return cadena;
    }

    /**
     * Define el valor de la propiedad cadena.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setCadena(String value) {
        this.cadena = value;
    }

    /**
     * Obtiene el valor de la propiedad apellido.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getApellido() {
        return apellido;
    }

    /**
     * Define el valor de la propiedad apellido.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setApellido(String value) {
        this.apellido = value;
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
     * Obtiene el valor de la propiedad fechas.
     * 
     * @return
     *     possible object is
     *     {@link ListaFechas }
     *     
     */
    public ListaFechas getFechas() {
        return fechas;
    }

    /**
     * Define el valor de la propiedad fechas.
     * 
     * @param value
     *     allowed object is
     *     {@link ListaFechas }
     *     
     */
    public void setFechas(ListaFechas value) {
        this.fechas = value;
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
