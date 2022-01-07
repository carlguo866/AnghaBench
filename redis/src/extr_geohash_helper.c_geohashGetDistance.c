
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double EARTH_RADIUS_IN_METERS ;
 double asin (int ) ;
 double cos (double) ;
 double deg_rad (double) ;
 double sin (double) ;
 int sqrt (double) ;

double geohashGetDistance(double lon1d, double lat1d, double lon2d, double lat2d) {
    double lat1r, lon1r, lat2r, lon2r, u, v;
    lat1r = deg_rad(lat1d);
    lon1r = deg_rad(lon1d);
    lat2r = deg_rad(lat2d);
    lon2r = deg_rad(lon2d);
    u = sin((lat2r - lat1r) / 2);
    v = sin((lon2r - lon1r) / 2);
    return 2.0 * EARTH_RADIUS_IN_METERS *
           asin(sqrt(u * u + cos(lat1r) * cos(lat2r) * v * v));
}
