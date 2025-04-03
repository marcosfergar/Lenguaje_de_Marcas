si algun elemeto es opcioal tendiras que poner minOcurs0
si por ejemplo en una sequencia de un libro aparece genero y en otra de libro no tendrias que ponerlos
en el genero en este caso.

<xs:element name="valoractual" minOccurs="0">
                        <xs:complexType>
                          <xs:simpleContent>
                            <xs:extension base="xs:float">
                              <xs:attribute name="moneda" />
                            </xs:extension>
                          </xs:simpleContent>
                        </xs:complexType>
                      </xs:element>
en este ejemplo hay que poner simplecontent y luego el extension pq tiene atributo