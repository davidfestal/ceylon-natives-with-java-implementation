# Ceylon natives with Java implementation

This is just a small project, to showcase that with the commits [ceylon-spec@857d7ec](https://github.com/ceylon/ceylon-spec/commit/857d7ec582c14c1bfc88f6d167a471ac9f39ea2b) and [ceylon-model@2311ab54](https://github.com/ceylon/ceylon-model/commit/2311ab5457ab12bb45ed249954f6eb92e9015b27), it is possible to :
- define a Ceylon native toplevel class or function header, 
- write its implementation directly in Java, 
- and _have the Java implementation considered as the **jvm backend native declaration** associated to the Ceylon native header declaration_.

In this example the `natives/run.ceylon` file contains the Ceylon declaration, and the `natives/NativeClass.java` file contains the implementation of the `NativeClass` Ceylon native header.

And the Java-backend compiler compiles both `run.ceylon` **_and_** `NativeClass.java`, correctly treats them as native overloads, and doesn't produce any error (if their structure is the same of course).

## Use inside the IDE

In order for this to be also working in the IDE, the project should be "JVM only" (it's a limitation that might be removed in the future).

## Navigation inside the IDE

In the IDE you can navigate from the Ceylon declaration native header to the Java implementation, but also from the Java Implementation to the corresponding Ceylon native header.
