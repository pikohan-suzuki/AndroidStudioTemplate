<navigation>
    <fragment
        android:id="@+id/${fragmentLayout}"
        android:name="${escapeKotlinIdentifiers(packageName)}.${escapeKotlinIdentifiers(fragmentClass)}"
        android:label="${fragmentLayout}"
        tools:layout="@layout/${fragmentLayout}"> 
    </fragment>
</navigation>