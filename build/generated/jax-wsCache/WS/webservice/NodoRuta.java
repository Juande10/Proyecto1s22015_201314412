
package webservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para nodoRuta complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="nodoRuta">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="anterior" type="{http://webservice/}nodoRuta" minOccurs="0"/>
 *         &lt;element name="estaciones" type="{http://webservice/}listaEstacionesRutas" minOccurs="0"/>
 *         &lt;element name="nombre" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="siguiente" type="{http://webservice/}nodoRuta" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "nodoRuta", propOrder = {
    "anterior",
    "estaciones",
    "nombre",
    "siguiente"
})
public class NodoRuta {

    protected NodoRuta anterior;
    protected ListaEstacionesRutas estaciones;
    protected String nombre;
    protected NodoRuta siguiente;

    /**
     * Obtiene el valor de la propiedad anterior.
     * 
     * @return
     *     possible object is
     *     {@link NodoRuta }
     *     
     */
    public NodoRuta getAnterior() {
        return anterior;
    }

    /**
     * Define el valor de la propiedad anterior.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoRuta }
     *     
     */
    public void setAnterior(NodoRuta value) {
        this.anterior = value;
    }

    /**
     * Obtiene el valor de la propiedad estaciones.
     * 
     * @return
     *     possible object is
     *     {@link ListaEstacionesRutas }
     *     
     */
    public ListaEstacionesRutas getEstaciones() {
        return estaciones;
    }

    /**
     * Define el valor de la propiedad estaciones.
     * 
     * @param value
     *     allowed object is
     *     {@link ListaEstacionesRutas }
     *     
     */
    public void setEstaciones(ListaEstacionesRutas value) {
        this.estaciones = value;
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

    /**
     * Obtiene el valor de la propiedad siguiente.
     * 
     * @return
     *     possible object is
     *     {@link NodoRuta }
     *     
     */
    public NodoRuta getSiguiente() {
        return siguiente;
    }

    /**
     * Define el valor de la propiedad siguiente.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoRuta }
     *     
     */
    public void setSiguiente(NodoRuta value) {
        this.siguiente = value;
    }

}
