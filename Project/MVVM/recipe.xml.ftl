<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

    <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
    <dependency mavenUrl="com.android.support.constraint:constraint-layout:+" />
    <dependency mavenUrl="android.arch.lifecycle:extensions:+"/>
    <#if generateKotlin && useAndroidX>
        <dependency mavenUrl="androidx.lifecycle:lifecycle-viewmodel-ktx:+"/>
    </#if>

    <merge from="root/module_gradle.ftl"
            to="${escapeXmlAttribute(projectOut)}/build.gradle" />
    <merge from="root/project_gradle.ftl"
            to="${escapeXmlAttribute(topOut)}/build.gradle"/>

    
    <mkdir at="${escapeXmlAttribute(resOut)}/navigation"/>
    <instantiate from="root/res/navigation/nav_graph.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/navigation/nav_graph.xml"/>

    <mkdir at="${escapeXmlAttribute(resOut)}/layout"/>
    <instantiate from="root/res/layout/activity.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(activityLayout)}.xml" />
    <instantiate from="root/res/layout/fragment.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${escapeXmlAttribute(fragmentLayout)}.xml" />



    <mkdir at="${escapeXmlAttribute(srcOut)}/util"/>
    <mkdir at="${escapeXmlAttribute(srcOut)}/repository"/>
    <mkdir at="${escapeXmlAttribute(srcOut)}/data"/>
    <mkdir at="${escapeXmlAttribute(srcOut)}/ui"/>
    <instantiate from="root/src/app_package/Activity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/MainViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/MainViewModel.kt" />

    <instantiate from="root/src/app_package/Fragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentPackage?replace('.', '/')}/${fragmentClass}.${ktOrJavaExt}" />
    <instantiate from="root/src/app_package/ViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${fragmentPackage?replace('.', '/')}/${viewModelClass}.${ktOrJavaExt}" />

    <instantiate from="root/src/app_package/Repository.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/repository/Repository.kt" />

    <instantiate from="root/src/app_package/BindingAdapter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/util/BindingAdapter.kt" />
    <instantiate from="root/src/app_package/EventObserver.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/util/EventObserver.kt" />
    <instantiate from="root/src/app_package/FragmentExtention.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/util/FragmentExtention.kt" />
    <instantiate from="root/src/app_package/ServiceLoader.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/util/ServiceLoader.kt" />
    <instantiate from="root/src/app_package/StringExtention.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/util/StringExtention.kt" />
    <instantiate from="root/src/app_package/ViewModelFactory.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/util/ViewModelFactory.kt" />
                   
</recipe>
