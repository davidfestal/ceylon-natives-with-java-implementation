"coucou"
shared native class NativeClass(String s) {}

"coucou"
shared native class NativeClassInCeylon(String s) {}

"coucou"
shared native("java") class NativeClassInCeylon(String s) {}

shared void run() {
    NativeClass("a"); 
}