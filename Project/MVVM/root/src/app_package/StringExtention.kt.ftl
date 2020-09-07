package ${escapeKotlinIdentifiers(packageName)}.${escapeKotlinIdentifiers(fragmentPackage)}

fun String?.isNotNullOrBlankOrEmpty():Boolean{
    if(this != null)
        return this.isNotEmpty()&&this.isNotBlank()
    return false
}