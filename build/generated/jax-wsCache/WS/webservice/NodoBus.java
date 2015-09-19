
package webservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para nodoBus complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="nodoBus">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="anterior" type="{http://webservice/}nodoBus" minOccurs="0"/>
 *         &lt;element name="numero" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="siguiente" type="{http://webservice/}nodoBus" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "nodoBus", propOrder = {
    "anterior",
    "numero",
    "siguiente"
})
public class NodoBus {

    protected NodoBus anterior;
    protected int numero;
    protected NodoBus siguiente;

    /**
     * Obtiene el valor de la propiedad anterior.
     * 
     * @return
     *     possible object is
     *     {@link NodoBus }
     *     
     */
    public NodoBus getAnterior() {
        return anterior;
    }

    /**
     * Define el valor de la propiedad anterior.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoBus }
     *     
     */
    public void setAnterior(NodoBus value) {
        this.anterior = value;
    }

    /**
     * Obtiene el valor de la propiedad numero.
     * 
     */
    public int getNumero() {
        return numero;
    }

    /**
     * Define el valor de la propiedad numero.
     * 
     */
    public void setNumero(int value) {
        this.numero = value;
    }

    /**
     * Obtiene el valor de la propiedad siguiente.
     * 
     * @return
     *     possible object is
     *     {@link NodoBus }
     *     
     */
    public NodoBus getSiguiente() {
        return siguiente;
    }

    /**
     * Define el valor de la propiedad siguiente.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoBus }
     *     
     */
    public void setSiguiente(NodoBus value) {
        this.siguiente = value;
    }

}
