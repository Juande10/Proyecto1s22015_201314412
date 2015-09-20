
package webservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para listaEstacionesRutas complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="listaEstacionesRutas">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="inicio" type="{http://webservice/}nodoEstacionesRutas" minOccurs="0"/>
 *         &lt;element name="fin" type="{http://webservice/}nodoEstacionesRutas" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "listaEstacionesRutas", propOrder = {
    "inicio",
    "fin"
})
public class ListaEstacionesRutas {

    protected NodoEstacionesRutas inicio;
    protected NodoEstacionesRutas fin;

    /**
     * Obtiene el valor de la propiedad inicio.
     * 
     * @return
     *     possible object is
     *     {@link NodoEstacionesRutas }
     *     
     */
    public NodoEstacionesRutas getInicio() {
        return inicio;
    }

    /**
     * Define el valor de la propiedad inicio.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoEstacionesRutas }
     *     
     */
    public void setInicio(NodoEstacionesRutas value) {
        this.inicio = value;
    }

    /**
     * Obtiene el valor de la propiedad fin.
     * 
     * @return
     *     possible object is
     *     {@link NodoEstacionesRutas }
     *     
     */
    public NodoEstacionesRutas getFin() {
        return fin;
    }

    /**
     * Define el valor de la propiedad fin.
     * 
     * @param value
     *     allowed object is
     *     {@link NodoEstacionesRutas }
     *     
     */
    public void setFin(NodoEstacionesRutas value) {
        this.fin = value;
    }

}
