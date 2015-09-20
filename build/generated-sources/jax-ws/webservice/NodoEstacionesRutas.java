
package webservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para nodoEstacionesRutas complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="nodoEstacionesRutas">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="anterior" type="{http://webservice/}nodoEstacionesRutas" minOccurs="0"/>
 *         &lt;element name="id" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="siguiente" type="{http://webservice/}nodoEstacionesRutas" minOccurs="0"/>
 *         &lt;element name="tipo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "nodoEstacionesRutas", propOrder = {
    "anterior",
    "id",
    "siguiente",
    "tipo"
})
public class NodoEstacionesRutas {

    protected NodoEstacionesRutas anterior;
    protected int id;
    protected NodoEstacionesRutas siguiente;
    protected String tipo;

    /**
     * Obtiene el valor de la propiedad anterior.
     * 
     * @return
     *     possible object is
     *     {@link NodoEstacionesRutas }
     *     
     */
    public NodoEstacionesRutas getAnterior() {
        return anterior;
    }

    /**
     * Define el valor de la propiedad anterior.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoEstacionesRutas }
     *     
     */
    public void setAnterior(NodoEstacionesRutas value) {
        this.anterior = value;
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
     * Obtiene el valor de la propiedad siguiente.
     * 
     * @return
     *     possible object is
     *     {@link NodoEstacionesRutas }
     *     
     */
    public NodoEstacionesRutas getSiguiente() {
        return siguiente;
    }

    /**
     * Define el valor de la propiedad siguiente.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoEstacionesRutas }
     *     
     */
    public void setSiguiente(NodoEstacionesRutas value) {
        this.siguiente = value;
    }

    /**
     * Obtiene el valor de la propiedad tipo.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTipo() {
        return tipo;
    }

    /**
     * Define el valor de la propiedad tipo.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTipo(String value) {
        this.tipo = value;
    }

}
