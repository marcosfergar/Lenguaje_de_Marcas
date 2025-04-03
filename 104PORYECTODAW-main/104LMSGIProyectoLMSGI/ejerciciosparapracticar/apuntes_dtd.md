1. Elementos 
Definición: Los elementos son las unidades básicas de un documento XML. 
Sintaxis: <!ELEMENT nombreElemento (contenido)> 
Tipos de Contenido: 
EMPTY: El elemento no tiene contenido. 
(#PCDATA): El elemento contiene solo texto. 
ANY: El elemento puede contener cualquier cosa (texto y otros elementos). 
Modelos de Grupo: 
, (coma): Secuencia específica de elementos. 
| (barra vertical): Elección entre elementos. 
?: Elemento opcional (0 o 1 vez). 
*: Elemento puede aparecer 0 o más veces. 
+: Elemento debe aparecer 1 o más veces. 
2. Atributos 
Definición: Los atributos proporcionan información adicional sobre los elementos. 
Sintaxis: <!ATTLIST nombreElemento nombreAtributo tipoAtributo valorInicialAtributo> 
Tipos de Atributos: 
CDATA: Cadena de caracteres. 
ID: Identificador único. 
IDREF: Referencia a un ID. 
IDREFS: Lista de referencias a IDs. 
NMTOKEN: Nombre válido sin espacios. 
NMTOKENS: Lista de nombres válidos sin espacios. 
Valores Predeterminados: 
#REQUIRED: Atributo obligatorio. 
#IMPLIED: Atributo opcional. 
#FIXED "valor": Valor fijo. 
3. Entidades 
Definición: Las entidades son fragmentos reutilizables de texto o datos. 
Sintaxis: 
Internas: <!ENTITY nombreEntidad "valorEntidad"> 
Externas: 
Sistema: <!ENTITY nombreEntidad SYSTEM "uri"> 
Pública: <!ENTITY nombreEntidad PUBLIC "fpi" "uri"> 
Tipos de Entidades: 
Generales: Usadas en el contenido del documento. 
Paramétricas: Usadas en la DTD misma. 
4. Notaciones 
Definición: Las notaciones se utilizan para identificar el formato de datos no XML. 
Sintaxis: <!NOTATION nombreNotacion SYSTEM "uri"> o <!NOTATION nombreNotacion PUBLIC "fpi" "uri"> 
Uso: Asociadas con entidades externas que no serán procesadas por el analizador XML.