
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const sd_device ;


 int assert (char const*) ;
 int device_add_property (char const*,char const*,char const*) ;
 int log_device_debug_errno (char const*,int,char*,char const*,char*,char*) ;
 int printf (char*,char const*,char*) ;
 char* strempty (char const*) ;

int udev_builtin_add_property(sd_device *dev, bool test, const char *key, const char *val) {
        int r;

        assert(dev);
        assert(key);

        r = device_add_property(dev, key, val);
        if (r < 0)
                return log_device_debug_errno(dev, r, "Failed to add property '%s%s%s'",
                                              key, val ? "=" : "", strempty(val));

        if (test)
                printf("%s=%s\n", key, strempty(val));

        return 0;
}
