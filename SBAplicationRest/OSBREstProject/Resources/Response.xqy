xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://TargetNamespace.com/ServiceName";
(:: import schema at "../Interfaces/Schema/xsd/Order.xsd" ::)

declare variable $request as element() (:: schema-element(ns1:carsRq) ::) external;

declare function local:func($request as element() (:: schema-element(ns1:carsRq) ::)) as element() (:: schema-element(ns1:cars) ::) {
    <ns1:cars>
        <ns1:cars>
            <ns1:category>
                <ns1:code>3751</ns1:code>
                <ns1:acrisscode>ECAR</ns1:acrisscode>
                <ns1:name>Economico</ns1:name>
                <ns1:numberDoors>4</ns1:numberDoors>
                <ns1:contents>
                    <ns1:code></ns1:code>
                    <ns1:name></ns1:name>
                    <ns1:items>
                        <ns1:code></ns1:code>
                        <ns1:name></ns1:name>
                    </ns1:items>
                </ns1:contents>
            </ns1:category>
            <ns1:player>
                <ns1:code>ZE</ns1:code>
                <ns1:name>HERTZ</ns1:name>
                <ns1:links>
                    <ns1:thumbnailImage>
                        <ns1:href></ns1:href>
                    </ns1:thumbnailImage>
                </ns1:links>
            </ns1:player>
            <ns1:rates>
                <ns1:description>carro economico</ns1:description>
                <ns1:currency>BRL</ns1:currency>
                <ns1:priceWithTax>123.00</ns1:priceWithTax>
                <ns1:priceWithoutTax>123.00</ns1:priceWithoutTax>
                <ns1:pricePerDayWithTax>123.00</ns1:pricePerDayWithTax>
                <ns1:pricePerDayWithoutTax>1000.00</ns1:pricePerDayWithoutTax>
                <ns1:rateToken></ns1:rateToken>
                <ns1:pickup>
                    <ns1:name>{fn:data($request/ns1:startLocation)}</ns1:name>
                    <ns1:id></ns1:id>
                    <ns1:date>{fn:data($request/ns1:startDate)}</ns1:date>
                </ns1:pickup>
                <ns1:return>
                    <ns1:name>{fn:data($request/ns1:endLocation)}</ns1:name>
                    <ns1:id></ns1:id>
                    <ns1:date>{fn:data($request/ns1:endDate)}</ns1:date>
                </ns1:return>
                <ns1:taxes>
                    <ns1:code></ns1:code>
                    <ns1:description></ns1:description>
                    <ns1:percent></ns1:percent>
                    <ns1:amount></ns1:amount>
                </ns1:taxes>
            </ns1:rates>
            <ns1:links>
                <ns1:thumbnailImage>
                    <ns1:href></ns1:href>
                </ns1:thumbnailImage>
            </ns1:links>
            <ns1:contents>
                <ns1:code></ns1:code>
                <ns1:name></ns1:name>
                <ns1:description></ns1:description>
                <ns1:items>
                    <ns1:description></ns1:description>
                </ns1:items>
            </ns1:contents>
            <ns1:minimumAge></ns1:minimumAge>
            <ns1:minimumLicensePeriod></ns1:minimumLicensePeriod>
        </ns1:cars>
    </ns1:cars>
};

local:func($request)
