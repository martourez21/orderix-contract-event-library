# Keep all public APIs
-keep public class com.orderix.** {
    public *;
}

# Keep Avro generated classes (if needed)
-keep class org.apache.avro.** { *; }

# Do not warn for missing classes
-dontwarn com.fasterxml.**
-dontwarn org.slf4j.**
-dontwarn org.apache.avro.**
