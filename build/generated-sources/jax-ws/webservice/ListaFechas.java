
package webservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para listaFechas complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="listaFechas">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="inicio" type="{http://webservice/}nodoFecha" minOccurs="0"/>
 *         &lt;element name="fin" type="{http://webservice/}nodoFecha" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "listaFechas", propOrder = {
    "inicio",
    "fin"
})
public class ListaFechas {

    protected NodoFecha inicio;
    protected NodoFecha fin;

    /**
     * Obtiene el valor de la propiedad inicio.
     * 
     * @return
     *     possible object is
     *     {@link NodoFecha }
     *     
     */
    public NodoFecha getInicio() {
        return inicio;
    }

    /**
     * Define el valor de la propiedad inicio.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoFecha }
     *     
     */
    public void setInicio(NodoFecha value) {
        this.inicio = value;
    }

    /**
     * Obtiene el valor de la propiedad fin.
     * 
     * @return
     *     possible object is
     *     {@link NodoFecha }
     *     
     */
    public NodoFecha getFin() {
        return fin;
    }

    /**
     * Define el valor de la propiedad fin.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoFecha }
     *     
     */
    public void setFin(NodoFecha value) {
        this.fin = value;
    }

}
