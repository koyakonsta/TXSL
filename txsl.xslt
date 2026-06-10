<?xml version="1.0" encoding="UTF-8"?>
<x:stylesheet version="3.0" xmlns:x="http://www.w3.org/1999/XSL/Transform">
	<x:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<x:variable name="predicate-aliases">
		<_>applyimports</_>
		<_>apply</_>
		<_>attr</_>
		<_>attrset</_>
		<_>call</_>
		<_>switch</_>
		<_>comment</_>
		<_>copy</_>
		<_>copyof</_>
		<_>elem</_>
		<_>text</_>
		<_>fallback</_>
		<_>for</_>
		<_>if</_>
		<_>import</_>
		<_>include</_>
		<_>key</_>
		<_>log</_>
		<_>else</_>
		<_>output</_>
		<_>var</_>
		<_>keepspace</_>
		<_>sort</_>
		<_>stripspace</_>
		<_>stylesheet</_>
		<_>transform</_>
		<_>template</_>
		<_>valueof</_>
		<_>const</_>
		<_>case</_>
		<_>pass</_>
	</x:variable>
	<x:variable name="predicates">
		<_>apply-imports</_>
		<_>apply-templates</_>
		<_>attribute</_>
		<_>attribute-set</_>
		<_>call-template</_>
		<_>choose</_>
		<_>comment</_>
		<_>copy</_>
		<_>copy-of</_>
		<_>element</_>
		<_>text</_>
		<_>fallback</_>
		<_>for-each</_>
		<_>if</_>
		<_>import</_>
		<_>include</_>
		<_>key</_>
		<_>message</_>
		<_>otherwise</_>
		<_>output</_>
		<_>param</_>
		<_>preserve-space</_>
		<_>sort</_>
		<_>strip-space</_>
		<_>stylesheet</_>
		<_>transform</_>
		<_>template</_>
		<_>value-of</_>
		<_>variable</_>
		<_>when</_>
		<_>with-param</_>
	</x:variable>
	
	<x:variable name="options">
		<_> <_>select</_> <_>mode</_> </_>
		<_> <_>select</_> <_>mode</_> </_>
		<_> <_>name</_> <_>uri</_> </_>
		<_> <_>name</_> <_>use-attribute-sets</_> </_>
		<_> <_>name</_> </_>
		<_> </_>
		<_> </_>
		<_> <_>use-attribute-sets</_> </_>
		<_> <_>select</_> </_>
		<_> <_>name</_> <_>namespace</_> <_>use-attribute-sets</_> </_>
		<_> </_>
		<_> </_>
		<_> <_>select</_> </_>
		<_> <_>test</_> </_>
		<_> <_>href</_> </_>
		<_> <_>href</_> </_>
		<_> <_>name</_> <_>match</_> <_>use</_> </_>
		<_> <_>terminate</_> </_>
		<_> </_>
		<_> <_>method</_> <_>version</_> <_>encoding</_> <_>omit-xml-declaration</_> <_>standalone</_> <_>doctype-public</_> <_>doctype-system</_> <_>cdata-section-elements</_> <_>indent</_> <_>media_type</_> </_>
		<_> <_>name</_> <_>select</_> </_>
		<_> <_>elements</_> </_>
		<_> <_>select</_> <_>lang</_> <_>data-type</_> <_>order</_> <_>case-order</_> </_>
		<_> <_>elements</_> </_>
		<_> <_>version</_> <_>extension-element-prefixes</_> <_>exclude-result-prefixes</_> <_>id</_> </_>
		<_> <_>version</_> <_>extension-element-prefixes</_> <_>exclude-result-prefixes</_> <_>id</_> </_>
		<_> <_>name</_> <_>match</_> <_>mode</_> <_>priority</_> </_>
		<_> <_>select</_> <_>disable-output-escaping</_> </_>
		<_> <_>name</_> <_>select</_> </_>
		<_> <_>test</_> </_>
		<_> <_>name</_> <_>select</_> </_>
	</x:variable>
	<x:variable name="option-aliases">
		<_> <_>target</_> <_>mode</_> </_>
		<_> <_>target</_> <_>mode</_> </_>
		<_> <_>_</_> <_>uri</_> </_>
		<_> <_>_</_> <_>use-attrsets</_> </_>
		<_> <_>_</_> </_>
		<_> </_>
		<_> </_>
		<_> <_>use-attrsets</_> </_>
		<_> <_>_</_> </_>
		<_> <_>_</_> <_>namespace</_> <_>use-attrsets</_> </_>
		<_> </_>
		<_> </_>
		<_> <_>_</_> </_>
		<_> <_>_</_> </_>
		<_> <_>_</_> </_>
		<_> <_>_</_> </_>
		<_> <_>_</_> <_>target</_> <_>val</_> </_>
		<_> <_>quit</_> </_>
		<_> </_>
		<_> <_>method</_> <_>version</_> <_>encoding</_> <_>omit-xml-declaration</_> <_>standalone</_> <_>doctype-public</_> <_>doctype-system</_> <_>cdata-section-elements</_> <_>indent</_> <_>media_type</_> </_>
		<_> <_>_</_> <_>val</_> </_>
		<_> <_>_</_> </_>
		<_> <_>_</_> <_>lang</_> <_>data-type</_> <_>order</_> <_>case-order</_> </_>
		<_> <_>_</_> </_>
		<_> <_>version</_> <_>extension-prefixes</_> <_>remove-prefixes</_> <_>id</_> </_>
		<_> <_>version</_> <_>extension-prefixes</_> <_>remove-prefixes</_> <_>id</_> </_>
		<_> <_>_</_> <_>match</_> <_>mode</_> <_>prio</_> </_>
		<_> <_>_</_> <_>no-escape</_> </_>
		<_> <_>_</_> <_>val</_> </_>
		<_> <_>_</_> </_>
		<_> <_>_</_> <_>val</_> </_>
	</x:variable>
	
	<!-- IDENTITY -->
	<x:template match="@*|node()">
		<x:copy>
			<x:apply-templates select="@*|node()"/>
		</x:copy>
	</x:template>
	
	<!-- remap predicate alias -->
	<x:template match="*[name() = $predicate-aliases/_]">
		<x:variable name="i" select="index-of($predicate-aliases/_, name())"/>
		<x:variable name="attrs" select="($option-aliases/_)[$i] "/>
		<x:element name="{concat('x:', $predicates/_[$i])}">
			<x:for-each select="@*[name() = $attrs/_]">
				<x:variable name="j" select="index-of($attrs/_, name())"/>
				<x:variable name="original-option-name" select="$options/_[$i]/_[$j]"/>
				<x:attribute name="{$original-option-name}">
					<x:value-of select="."/>
				</x:attribute>
			</x:for-each>
			<x:apply-templates select="node()"/>
		</x:element>
	</x:template>
	
	<!-- map tag+predicate literal to <predicate><tag></tag></predicate> or inverse if appropriate -->
	<!-- TODO: add inverse -->
	<x:template match="*[not(name() = $predicate-aliases/_) and @*[name() = $predicate-aliases/_]]">
		<x:variable name="new-elem" select="@*[name() = $predicate-aliases/_][1]"/>
		<x:variable name="i" select="index-of($predicate-aliases/_, $new-elem)"/>
		<x:variable name="attrs" select="($option-aliases/_)[$i] "/>
		<x:variable name="result">
			<x:element name="{name($new-elem)}">
				<x:for-each select="@*[name() = $attrs/_]">
					<x:copy-of select="."/>
				</x:for-each>
				<x:if test="not(@_)">
					<x:attribute name="_">
						<x:value-of select="$new-elem"/>
					</x:attribute>
				</x:if>
				<x:element name="{name()}">
					<x:for-each select="@*[not(name() = $attrs/_) and not(name() = $predicate-aliases/_)]">
						<x:copy-of select="."/>
					</x:for-each>
					<x:copy-of select="node()"/>
				</x:element>
			</x:element>
		</x:variable>
		<x:apply-templates select="$result"/>
	</x:template>
</x:stylesheet>