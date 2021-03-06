apply plugin : 'kotlin-kapt'
apply plugin: "androidx.navigation.safeargs.kotlin"

android {
   dataBinding {
        enabled = true
    }
    packagingOptions {
        exclude 'META-INF/atomicfu.kotlin_module'
    }
    kotlinOptions {
        jvmTarget = '1.8'
    }
}

dependencies {

        //Room
        implementation "androidx.room:room-runtime:2.3.0-alpha02"
        implementation "androidx.room:room-ktx:2.3.0-alpha02"
        kapt "androidx.room:room-compiler:2.3.0-alpha02"
        androidTestImplementation "androidx.room:room-testing:2.3.0-alpha02"

        // Lifecycle
        implementation 'androidx.lifecycle:lifecycle-extensions:2.2.0'
        kapt "androidx.lifecycle:lifecycle-compiler:2.3.0-alpha07"
        androidTestImplementation "androidx.arch.core:core-testing:2.1.0"

        //Navigation
        implementation "androidx.navigation:navigation-fragment-ktx:2.3.0"
        implementation "androidx.navigation:navigation-ui-ktx:2.3.0"
        implementation "androidx.navigation:navigation-dynamic-features-fragment:2.3.0"
        androidTestImplementation "androidx.navigation:navigation-testing:2.3.0"

        //dataBinding
        kapt 'com.android.databinding:compiler:3.2.0-alpha10'
        kapt "com.android.databinding:compiler:3.1.4"

        // Kotlin
        implementation "androidx.fragment:fragment-ktx:1.3.0-alpha08"
        debugImplementation "androidx.fragment:fragment-testing:1.3.0-alpha08"
        implementation "androidx.test:core:1.3.0"
        implementation "androidx.fragment:fragment:1.3.0-alpha08"

}