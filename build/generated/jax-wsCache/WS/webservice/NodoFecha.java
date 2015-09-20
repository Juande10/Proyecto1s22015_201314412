
package webservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para nodoFecha complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="nodoFecha">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="anterior" type="{http://webservice/}nodoFecha" minOccurs="0"/>
 *         &lt;element name="asignaciones" type="{http://webservice/}listaAsignaciones" minOccurs="0"/>
 *         &lt;element name="fecha" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="siguiente" type="{http://webservice/}nodoFecha" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "nodoFecha", propOrder = {
    "anterior",
    "asignaciones",
    "fecha",
    "siguiente"
})
public class NodoFecha {

    protected NodoFecha anterior;
    protected ListaAsignaciones asignaciones;
    protected String fecha;
    protected NodoFecha siguiente;

    /**
     * Obtiene el valor de la propiedad anterior.
     * 
     * @return
     *     possible object is
     *     {@link NodoFecha }
     *     
     */
    public NodoFecha getAnterior() {
        return anterior;
    }

    /**
     * Define el valor de la propiedad anterior.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoFecha }
     *     
     */
    public void setAnterior(NodoFecha value) {
        this.anterior = value;
    }

    /**
     * Obtiene el valor de la propiedad asignaciones.
     * 
     * @return
     *     possible object is
     *     {@link ListaAsignaciones }
     *     
     */
    public ListaAsignaciones getAsignaciones() {
        return asignaciones;
    }

    /**
     * Define el valor de la propiedad asignaciones.
     * 
     * @param value
     *     allowed object is
     *     {@link ListaAsignaciones }
     *     
     */
    public void setAsignaciones(ListaAsignaciones value) {
        this.asignaciones = value;
    }

    /**
     * Obtiene el valor de la propiedad fecha.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getFecha() {
        return fecha;
    }

    /**
     * Define el valor de la propiedad fecha.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setFecha(String value) {
        this.fecha = value;
    }

    /**
     * Obtiene el valor de la propiedad siguiente.
     * 
     * @return
     *     possible object is
     *     {@link NodoFecha }
     *     
     */
    public NodoFecha getSiguiente() {
        return siguiente;
    }

    /**
     * Define el valor de la propiedad siguiente.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoFecha }
     *     
     */
    public void setSiguiente(NodoFecha value) {
        this.siguiente = value;
    }

}
