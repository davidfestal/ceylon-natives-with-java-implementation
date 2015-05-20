"This is a native header with a Java-specific implementation
 written in Java
 
 The link between both declarations is done by the modelLoader,
 because the Java-class has the required Backend annotation :
 `@ceylon.language.NativeAnnotation$annotation$(backend=\"java\")`"
shared native class NativeClass(String s) {}

"This is a native header with a Java-specific implementation
 written in Ceylon"
shared native class NativeClassInCeylon(String s) {}

shared native("java") class NativeClassInCeylon(String s) {}

shared void run() {
    NativeClass("Hi from Java native implementation !"); 
}