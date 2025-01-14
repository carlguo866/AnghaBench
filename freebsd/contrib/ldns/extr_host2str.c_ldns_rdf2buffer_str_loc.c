
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int ldns_status ;
typedef int ldns_rdf ;
typedef int ldns_buffer ;


 int LDNS_STATUS_WIRE_RDATA_ERR ;
 int ldns_buffer_printf (int *,char*,...) ;
 int ldns_buffer_status (int *) ;
 int ldns_power (int,int) ;
 int ldns_rdf2buffer_str_hex (int *,int const*) ;
 scalar_t__* ldns_rdf_data (int const*) ;
 int ldns_rdf_size (int const*) ;
 int ldns_read_uint32 (scalar_t__*) ;
 int loc_cm_print (int *,scalar_t__,scalar_t__) ;

ldns_status
ldns_rdf2buffer_str_loc(ldns_buffer *output, const ldns_rdf *rdf)
{

 uint8_t version;
 uint8_t size;
 uint8_t horizontal_precision;
 uint8_t vertical_precision;
 uint32_t longitude;
 uint32_t latitude;
 uint32_t altitude;
 char northerness;
 char easterness;
 uint32_t h;
 uint32_t m;
 double s;

 uint32_t equator = (uint32_t) ldns_power(2, 31);

        if(ldns_rdf_size(rdf) < 1) {
                return LDNS_STATUS_WIRE_RDATA_ERR;
        }
        version = ldns_rdf_data(rdf)[0];
 if (version == 0) {
  if(ldns_rdf_size(rdf) < 16) {
   return LDNS_STATUS_WIRE_RDATA_ERR;
  }
  size = ldns_rdf_data(rdf)[1];
  horizontal_precision = ldns_rdf_data(rdf)[2];
  vertical_precision = ldns_rdf_data(rdf)[3];

  latitude = ldns_read_uint32(&ldns_rdf_data(rdf)[4]);
  longitude = ldns_read_uint32(&ldns_rdf_data(rdf)[8]);
  altitude = ldns_read_uint32(&ldns_rdf_data(rdf)[12]);

  if (latitude > equator) {
   northerness = 'N';
   latitude = latitude - equator;
  } else {
   northerness = 'S';
   latitude = equator - latitude;
  }
  h = latitude / (1000 * 60 * 60);
  latitude = latitude % (1000 * 60 * 60);
  m = latitude / (1000 * 60);
  latitude = latitude % (1000 * 60);
  s = (double) latitude / 1000.0;
  ldns_buffer_printf(output, "%02u %02u %0.3f %c ",
   h, m, s, northerness);

  if (longitude > equator) {
   easterness = 'E';
   longitude = longitude - equator;
  } else {
   easterness = 'W';
   longitude = equator - longitude;
  }
  h = longitude / (1000 * 60 * 60);
  longitude = longitude % (1000 * 60 * 60);
  m = longitude / (1000 * 60);
  longitude = longitude % (1000 * 60);
  s = (double) longitude / (1000.0);
  ldns_buffer_printf(output, "%02u %02u %0.3f %c ",
   h, m, s, easterness);


  s = ((double) altitude) / 100;
  s -= 100000;

  if(altitude%100 != 0)
   ldns_buffer_printf(output, "%.2f", s);
  else
   ldns_buffer_printf(output, "%.0f", s);

  ldns_buffer_printf(output, "m ");

  loc_cm_print(output, (size & 0xf0) >> 4, size & 0x0f);
  ldns_buffer_printf(output, "m ");

  loc_cm_print(output, (horizontal_precision & 0xf0) >> 4,
   horizontal_precision & 0x0f);
  ldns_buffer_printf(output, "m ");

  loc_cm_print(output, (vertical_precision & 0xf0) >> 4,
   vertical_precision & 0x0f);
  ldns_buffer_printf(output, "m");

  return ldns_buffer_status(output);
 } else {
  return ldns_rdf2buffer_str_hex(output, rdf);
 }
}
