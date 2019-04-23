package ${escapeKotlinIdentifiers(packageName)}

import ${getMaterialComponentName('android.arch.lifecycle.ViewModel', useAndroidX)}
import android.content.Context
<#if applicationPackage??>
import ${applicationPackage}.di.Injectable
</#if>
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Author: Tsung Hsuan, Lai
 * Created on: ${.now?date}
 * Description: 
 */
class ${viewModelName} : ViewModel() {
    companion object {
		private val TAG = ${viewModelName}::class.java.simpleName
	}
	
	/**
     * Remove all observers here, usually mutable live data
     */
    fun removeObservers(context: Context) {
    }
}