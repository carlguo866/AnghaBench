
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int png_uint_32 ;
struct TYPE_14__ {int itxt_length; scalar_t__ text_length; void* text; void* lang_key; void* lang; void* key; int compression; } ;
typedef TYPE_2__ png_text ;
typedef TYPE_3__* png_structrp ;
typedef int png_inforp ;
typedef char* png_const_charp ;
typedef void* png_charp ;
typedef int* png_bytep ;
typedef int png_alloc_size_t ;
struct TYPE_13__ {char* msg; } ;
struct TYPE_15__ {int user_chunk_cache_max; int mode; int* read_buffer; TYPE_1__ zstream; } ;


 int PNG_AFTER_IDAT ;
 int PNG_COMPRESSION_TYPE_BASE ;
 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_ITXT_COMPRESSION_NONE ;
 int PNG_ITXT_COMPRESSION_zTXt ;
 int PNG_SIZE_MAX ;
 scalar_t__ Z_STREAM_END ;
 int png_chunk_benign_error (TYPE_3__*,char*) ;
 int png_chunk_error (TYPE_3__*,char*) ;
 scalar_t__ png_crc_finish (TYPE_3__*,int) ;
 int png_crc_read (TYPE_3__*,int*,int) ;
 int png_debug (int,char*) ;
 scalar_t__ png_decompress_chunk (TYPE_3__*,int,int,int*,int) ;
 int* png_read_buffer (TYPE_3__*,int,int) ;
 scalar_t__ png_set_text_2 (TYPE_3__*,int ,TYPE_2__*,int) ;

void
png_handle_iTXt(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   png_const_charp errmsg = ((void*)0);
   png_bytep buffer;
   png_uint_32 prefix_length;

   png_debug(1, "in png_handle_iTXt");
   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      png_chunk_error(png_ptr, "missing IHDR");

   if ((png_ptr->mode & PNG_HAVE_IDAT) != 0)
      png_ptr->mode |= PNG_AFTER_IDAT;

   buffer = png_read_buffer(png_ptr, length+1, 1 );

   if (buffer == ((void*)0))
   {
      png_crc_finish(png_ptr, length);
      png_chunk_benign_error(png_ptr, "out of memory");
      return;
   }

   png_crc_read(png_ptr, buffer, length);

   if (png_crc_finish(png_ptr, 0) != 0)
      return;


   for (prefix_length=0;
      prefix_length < length && buffer[prefix_length] != 0;
      ++prefix_length)
                       ;


   if (prefix_length > 79 || prefix_length < 1)
      errmsg = "bad keyword";





   else if (prefix_length + 5 > length)
      errmsg = "truncated";

   else if (buffer[prefix_length+1] == 0 ||
      (buffer[prefix_length+1] == 1 &&
      buffer[prefix_length+2] == PNG_COMPRESSION_TYPE_BASE))
   {
      int compressed = buffer[prefix_length+1] != 0;
      png_uint_32 language_offset, translated_keyword_offset;
      png_alloc_size_t uncompressed_length = 0;


      prefix_length += 3;
      language_offset = prefix_length;

      for (; prefix_length < length && buffer[prefix_length] != 0;
         ++prefix_length)
                          ;


      translated_keyword_offset = ++prefix_length;

      for (; prefix_length < length && buffer[prefix_length] != 0;
         ++prefix_length)
                          ;






      ++prefix_length;

      if (compressed == 0 && prefix_length <= length)
         uncompressed_length = length - prefix_length;

      else if (compressed != 0 && prefix_length < length)
      {
         uncompressed_length = PNG_SIZE_MAX;





         if (png_decompress_chunk(png_ptr, length, prefix_length,
             &uncompressed_length, 1 ) == Z_STREAM_END)
            buffer = png_ptr->read_buffer;

         else
            errmsg = png_ptr->zstream.msg;
      }

      else
         errmsg = "truncated";

      if (errmsg == ((void*)0))
      {
         png_text text;

         buffer[uncompressed_length+prefix_length] = 0;

         if (compressed == 0)
            text.compression = PNG_ITXT_COMPRESSION_NONE;

         else
            text.compression = PNG_ITXT_COMPRESSION_zTXt;

         text.key = (png_charp)buffer;
         text.lang = (png_charp)buffer + language_offset;
         text.lang_key = (png_charp)buffer + translated_keyword_offset;
         text.text = (png_charp)buffer + prefix_length;
         text.text_length = 0;
         text.itxt_length = uncompressed_length;

         if (png_set_text_2(png_ptr, info_ptr, &text, 1) != 0)
            errmsg = "insufficient memory";
      }
   }

   else
      errmsg = "bad compression info";

   if (errmsg != ((void*)0))
      png_chunk_benign_error(png_ptr, errmsg);
}
