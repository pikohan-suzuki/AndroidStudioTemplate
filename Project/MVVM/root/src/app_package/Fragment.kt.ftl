package ${packageName}.${fragmentPackage}

import ${getMaterialComponentName('android.arch.lifecycle.ViewModelProviders', useAndroidX)}
import android.os.Bundle
import ${getMaterialComponentName('android.support.v4.app.Fragment', useAndroidX)}
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.viewModels
import ${packageName}.databinding.${fragmentClass}Binding

class ${fragmentClass} : Fragment() {

    private val viewModel: ${viewModelClass} by viewModels { getViewModelFactory() }
    private lateinit var mainFragmentBinding: ${fragmentClass}Binding

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        mainFragmentBinding = ${fragmentClass}Binding.inflate(inflater,container,false).apply {
            viewModel = this@${fragmentClass}.viewModel
            lifecycleOwner = viewLifecycleOwner
        }
        return mainFragmentBinding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

    }

//    private fun navigateToAaaa(){
//        val action = MainFragmentDirections
//            .actionMainFragmentToRecordFragment()
//        findNavController().navigate(action)
//    }

}