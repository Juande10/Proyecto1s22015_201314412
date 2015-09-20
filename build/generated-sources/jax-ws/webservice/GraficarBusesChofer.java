
package webservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para GraficarBusesChofer complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="GraficarBusesChofer">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="idchofer" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "GraficarBusesChofer", propOrder = {
    "idchofer"
})
public class GraficarBusesChofer {

    protected String idchofer;

    /**
     * Obtiene el valor de la propiedad idchofer.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getIdchofer() {
        return idchofer;
    }

    /**
     * Define el valor de la propiedad idchofer.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setIdchofer(String value) {
        this.idchofer = value;
    }

}
