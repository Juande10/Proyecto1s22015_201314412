
package webservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para AsignarEstacion complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="AsignarEstacion">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="nombreruta" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="idestacion" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="tipoestacion" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "AsignarEstacion", propOrder = {
    "nombreruta",
    "idestacion",
    "tipoestacion"
})
public class AsignarEstacion {

    protected String nombreruta;
    protected String idestacion;
    protected String tipoestacion;

    /**
     * Obtiene el valor de la propiedad nombreruta.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNombreruta() {
        return nombreruta;
    }

    /**
     * Define el valor de la propiedad nombreruta.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNombreruta(String value) {
        this.nombreruta = value;
    }

    /**
     * Obtiene el valor de la propiedad idestacion.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getIdestacion() {
        return idestacion;
    }

    /**
     * Define el valor de la propiedad idestacion.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setIdestacion(String value) {
        this.idestacion = value;
    }

    /**
     * Obtiene el valor de la propiedad tipoestacion.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getTipoestacion() {
        return tipoestacion;
    }

    /**
     * Define el valor de la propiedad tipoestacion.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setTipoestacion(String value) {
        this.tipoestacion = value;
    }

}
