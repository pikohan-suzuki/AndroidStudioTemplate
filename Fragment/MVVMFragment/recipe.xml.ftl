<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
     <@kt.addAllKotlinDependencies />

    <#assign escapedResOut="${escapeXmlAttribute(resOut)}">
    <#assign escapedSrcOut="${escapeXmlAttribute(srcOut)}">

    <merge from="root/res/navigation/nav_graph.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/navigation/nav_graph.xml" />

    <instantiate from="root/res/layout/fragment.xml.ftl"
                   to="${escapedResOut}/layout/${fragmentLayout}.xml" />
    <instantiate from="root/src/app_package/Fragment.kt.ftl"
                   to="${escapedSrcOut}/${fragmentClass}.kt" />
    <instantiate from="root/src/app_package/ViewModel.kt.ftl"
                   to="${escapedSrcOut}/${viewModelClass}.kt" />


</recipe>
