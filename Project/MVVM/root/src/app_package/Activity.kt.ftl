package ${escapeKotlinIdentifiers(packageName)}

import ${superClassFqcn}
import android.os.Bundle
import androidx.activity.viewModels
import ${escapeKotlinIdentifiers(packageName)}.${escapeKotlinIdentifiers(fragmentPackage)}.MainViewModel
import ${escapeKotlinIdentifiers(packageName)}.${escapeKotlinIdentifiers(fragmentPackage)}.getViewModelFactory

class ${activityClass} : AppCompatActivity() {

    val viewModel: MainViewModel by viewModels { getViewModelFactory() }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${activityLayout})

    }
}
