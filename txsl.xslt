<?xml version="1.0" encoding="UTF-8"?>
<x:stylesheet version="3.0" xmlns:x="http://www.w3.org/1999/XSL/Transform">
	<x:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<x:variable name="predicate-aliases">
		<applyimports/>
		<apply/>
		<attr/>
		<attrset/>
		<call/>
		<switch/>
		<comment/>
		<copy/>
		<copyof/>
		<elem/>
		<text/>
		<fallback/>
		<for/>
		<if/>
		<import/>
		<include/>
		<key/>
		<log/>
		<else/>
		<output/>
		<var/>
		<keepspace/>
		<sort/>
		<stripspace/>
		<stylesheet/>
		<transform/>
		<template/>
		<valueof/>
		<const/>
		<case/>
		<pass/>
	</x:variable>
	<x:variable name="predicates">
		<apply-imports/>
		<apply-templates/>
		<attribute/>
		<attribute-set/>
		<call-template/>
		<choose/>
		<comment/>
		<copy/>
		<copy-of/>
		<element/>
		<text/>
		<fallback/>
		<for-each/>
		<if/>
		<import/>
		<include/>
		<key/>
		<message/>
		<otherwise/>
		<output/>
		<param/>
		<preserve-space/>
		<sort/>
		<strip-space/>
		<stylesheet/>
		<transform/>
		<template/>
		<value-of/>
		<variable/>
		<when/>
		<with-param/>
	</x:variable>
	
	<x:variable name="options">
		<_> <select/> <mode/> 																																				</_>
		<_> <select/> <mode/> 																																				</_>
		<_> <name/> <uri/> 																																					</_>
		<_> <name/> <use-attribute-sets/>																																	</_>
		<_> <name/>																																							</_>
		<_> 																																								</_>
		<_> 																																								</_>
		<_> <use-attribute-sets/> 																																			</_>
		<_> <select/> 																																						</_>
		<_> <name/> <namespace/> <use-attribute-sets/>																														</_>
		<_> 																																								</_>
		<_> 																																								</_>
		<_> <select/> 																																						</_>
		<_> <test/> 																																						</_>
		<_> <href/> 																																						</_>
		<_> <href/> 																																						</_>
		<_> <name/> <match/> <use/> 																																		</_>
		<_> <terminate/> 																																					</_>
		<_> 																																								</_>
		<_> <method/> <version/> <encoding/> <omit-xml-declaration/> <standalone/> <doctype-public/> <doctype-system/> <cdata-section-elements/> <indent/> <media_type/>	</_>
		<_> <name/> <select/> 																																				</_>
		<_> <elements/> 																																					</_>
		<_>	<select/>	<lang/>	<data-type/>	<order/>	<case-order/>																									</_>
		<_> <elements/> 																																					</_>
		<_> <version/> <extension-element-prefixes/> <exclude-result-prefixes/> <id/> 																						</_>
		<_> <version/> <extension-element-prefixes/> <exclude-result-prefixes/> <id/> 																						</_>
		<_>	<name/>	<match/>	<mode/>	<priority/>																															</_>
		<_>	<select/>	<disable-output-escaping/>																															</_>
		<_>	<name/>	<select/>																																				</_>
		<_>	<test/>																																							</_>
		<_>	<name/>	<select/>																																				</_>
	</x:variable>
	<x:variable name="option-aliases">
		<_>	<target/>	<mode/>																																				</_>
		<_>	<target/>	<mode/>																																				</_>
		<_>	<_/>	<uri/>																																					</_>
		<_>	<_/>	<use-attrsets/>																																			</_>
		<_>	<_/>																																							</_>
		<_> 																																								</_>
		<_> 																																								</_>
		<_>	<use-attrsets/>																																					</_>
		<_>	<_/>																																							</_>
		<_>	<_/>	<namespace/>	<use-attrsets/>																															</_>
		<_> 																																								</_>
		<_> 																																								</_>
		<_>	<_/>																																							</_>
		<_>   	<_/>																																						</_>
		<_>   	<_/>																																						</_>
		<_>   	<_/>																																						</_>
		<_>	<_/>	<target/>	<val/>																																		</_>
		<_>	<quit/>																																							</_>
		<_> 																																								</_>
		<_>	<method/> <version/> <encoding/> <omit-xml-declaration/> <standalone/> <doctype-public/> <doctype-system/> <cdata-section-elements/> <indent/> <media_type/>	</_>
		<_>	<_/>	<val/>																																					</_>
		<_>	<_/>																																							</_>
		<_>	<_/>	<lang/>	<data-type/>	<order/>	<case-order/>																										</_>
		<_>	<_/>																																							</_>
		<_>	<version/>	<extension-prefixes/>	<remove-prefixes/>	<id/>																									</_>
		<_>	<version/>	<extension-prefixes/>	<remove-prefixes/>	<id/>																									</_>
		<_>	<_/>	<match/>	<mode/>	<prio/>																																</_>
		<_>	<_/>	<no-escape/>																																			</_>
		<_>	<_/>	<val/>																																					</_>
		<_>	<_/>																																							</_>
		<_>	<_/>	<val/>																																					</_>
	</x:variable>
	
	<!-- IDENTITY -->
	<x:template match="@*|node()">
		<x:copy>
			<x:apply-templates select="@*|node()"/>
		</x:copy>
	</x:template>
	
	<!-- remap predicate alias -->
	<x:template match="*[name() = $predicate-aliases/*/name()]">
		<x:variable name="i" select="index-of($predicate-aliases/*/name(), name())"/>
		<x:variable name="attrs" select="($option-aliases/_)[$i] "/>
		<x:element name="{concat('x:', name($predicates/*[$i]))}">
			<x:for-each select="@*[name() = $attrs/*/name()]">
				<x:variable name="j" select="index-of($attrs/*/name(), name())"/>
				<x:variable name="original-option-name" select="name($options/_[$i]/*[$j])"/>
				<x:attribute name="{$original-option-name}">
					<x:value-of select="."/>
				</x:attribute>
			</x:for-each>
			<x:apply-templates select="node()"/>
		</x:element>
	</x:template>
	
	<!-- map tag+predicate literal to <predicate><tag></tag></predicate> or inverse if appropriate -->
	<!-- TODO: add inverse -->
	<x:template match="*[not(name() = $predicate-aliases/*/name()) and @*[name() = $predicate-aliases/*/name()]]">
		<x:variable name="new-elem" select="@*[name() = $predicate-aliases/*/name()][1]"/>
		<x:variable name="i" select="index-of($predicate-aliases/*/name(), $new-elem)"/>
		<x:variable name="attrs" select="($option-aliases/_)[$i] "/>
		<x:variable name="result">
			<x:element name="{name($new-elem)}">
				<x:for-each select="@*[name() = $attrs/*/name()]">
					<x:copy-of select="."/>
				</x:for-each>
				<x:if test="not(@_)">
					<x:attribute name="_">
						<x:value-of select="$new-elem"/>
					</x:attribute>
				</x:if>
				<x:element name="{name()}">
					<x:for-each select="@*[not(name() = $attrs/*/name()) and not(name() = $predicate-aliases/*/name())]">
						<x:copy-of select="."/>
					</x:for-each>
					<x:copy-of select="node()"/>
				</x:element>
			</x:element>
		</x:variable>
		<x:apply-templates select="$result"/>
	</x:template>
</x:stylesheet>