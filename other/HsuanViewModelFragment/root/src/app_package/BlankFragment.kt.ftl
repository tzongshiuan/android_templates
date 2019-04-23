package ${escapeKotlinIdentifiers(packageName)}

import ${getMaterialComponentName('android.arch.lifecycle.ViewModelProviders', useAndroidX)}
import android.os.Bundle
import ${getMaterialComponentName('android.support.v4.app.Fragment', useAndroidX)}
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup

<#if applicationPackage??>
import ${applicationPackage}.di.Injectable
import ${applicationPackage}.utils.MyViewModelFactory
</#if>

/**
 * Author: Tsung Hsuan, Lai
 * Created on: ${.now?date}
 * Description: 
 */
class ${className} : Fragment(), Injectable {

    companion object {
		private val TAG = ${className}::class.java.simpleName
	}
	
	@Inject
    lateinit var factory: MyViewModelFactory

	@Inject
    lateinit var viewModel: ${viewModelName}
	
	private lateinit var mBinding: ${underscoreToCamelCase(classToResource(className))}FragmentBinding

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {
        LogMessage.D(TAG, "onCreateView()")
        mBinding = ${underscoreToCamelCase(classToResource(className))}FragmentBinding.inflate(inflater, container, false)
        initUI()

        return mBinding.root
    }

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)
		
		initViewModel()
        initSetting()
    }
	
	override fun onResume() {
        LogMessage.D(TAG, "onResume()")
        super.onResume()
	}
	
	override fun onPause() {
        LogMessage.D(TAG, "onPause()")
        super.onPause()
    }

    override fun onStop() {
        LogMessage.D(TAG, "onStop()")
        super.onStop()
    }

    override fun onDestroy() {
        LogMessage.D(TAG, "onDestroy()")
        super.onDestroy()
    }
	
	override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
        LogMessage.D(TAG, "onActivityResult()")
        super.onActivityResult(requestCode, resultCode, data)
    }

	private fun initViewModel() {
        viewModel = ViewModelProviders.of(this, factory).get(${viewModelName}::class.java)
    }

    private fun initUI() {
    }

    private fun initSetting() {
    }
}
