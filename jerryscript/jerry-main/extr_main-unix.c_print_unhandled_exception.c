
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int msg ;
typedef int jerry_value_t ;
typedef int jerry_size_t ;
typedef char jerry_char_t ;


 scalar_t__ JERRY_ERROR_SYNTAX ;
 int JERRY_FEATURE_ERROR_MESSAGES ;
 int JERRY_LOG_LEVEL_ERROR ;
 unsigned int SYNTAX_ERROR_CONTEXT_SIZE ;
 int assert (int) ;
 char* buffer ;
 int jerry_create_string (char const*) ;
 int jerry_get_array_length (int ) ;
 scalar_t__ jerry_get_error_type (int ) ;
 int jerry_get_property (int ,int ) ;
 int jerry_get_property_by_index (int ,int) ;
 int jerry_get_utf8_string_size (int ) ;
 scalar_t__ jerry_is_feature_enabled (int ) ;
 int jerry_port_log (int ,char*,...) ;
 int jerry_release_value (int ) ;
 int jerry_string_to_utf8_char_buffer (int ,char*,int) ;
 scalar_t__ jerry_value_is_array (int ) ;
 int jerry_value_is_error (int ) ;
 scalar_t__ jerry_value_is_object (int ) ;
 scalar_t__ jerry_value_is_string (int ) ;
 int jerry_value_to_string (int ) ;
 int memcpy (char*,char const*,int) ;
 int printf (char*,...) ;
 int read_file (char*,size_t*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static void
print_unhandled_exception (jerry_value_t error_value)
{
  assert (!jerry_value_is_error (error_value));

  jerry_char_t err_str_buf[256];

  if (jerry_value_is_object (error_value))
  {
    jerry_value_t stack_str = jerry_create_string ((const jerry_char_t *) "stack");
    jerry_value_t backtrace_val = jerry_get_property (error_value, stack_str);
    jerry_release_value (stack_str);

    if (!jerry_value_is_error (backtrace_val)
        && jerry_value_is_array (backtrace_val))
    {
      printf ("Exception backtrace:\n");

      uint32_t length = jerry_get_array_length (backtrace_val);


      if (length > 32)
      {
        length = 32;
      }

      for (uint32_t i = 0; i < length; i++)
      {
        jerry_value_t item_val = jerry_get_property_by_index (backtrace_val, i);

        if (!jerry_value_is_error (item_val)
            && jerry_value_is_string (item_val))
        {
          jerry_size_t str_size = jerry_get_utf8_string_size (item_val);

          if (str_size >= 256)
          {
            printf ("%3u: [Backtrace string too long]\n", i);
          }
          else
          {
            jerry_size_t string_end = jerry_string_to_utf8_char_buffer (item_val, err_str_buf, str_size);
            assert (string_end == str_size);
            err_str_buf[string_end] = 0;

            printf ("%3u: %s\n", i, err_str_buf);
          }
        }

        jerry_release_value (item_val);
      }
    }
    jerry_release_value (backtrace_val);
  }

  jerry_value_t err_str_val = jerry_value_to_string (error_value);
  jerry_size_t err_str_size = jerry_get_utf8_string_size (err_str_val);

  if (err_str_size >= 256)
  {
    const char msg[] = "[Error message too long]";
    err_str_size = sizeof (msg) / sizeof (char) - 1;
    memcpy (err_str_buf, msg, err_str_size + 1);
  }
  else
  {
    jerry_size_t string_end = jerry_string_to_utf8_char_buffer (err_str_val, err_str_buf, err_str_size);
    assert (string_end == err_str_size);
    err_str_buf[string_end] = 0;

    if (jerry_is_feature_enabled (JERRY_FEATURE_ERROR_MESSAGES)
        && jerry_get_error_type (error_value) == JERRY_ERROR_SYNTAX)
    {
      jerry_char_t *string_end_p = err_str_buf + string_end;
      unsigned int err_line = 0;
      unsigned int err_col = 0;
      char *path_str_p = ((void*)0);
      char *path_str_end_p = ((void*)0);


      for (jerry_char_t *current_p = err_str_buf; current_p < string_end_p; current_p++)
      {
        if (*current_p == '[')
        {
          current_p++;

          if (*current_p == '<')
          {
            break;
          }

          path_str_p = (char *) current_p;
          while (current_p < string_end_p && *current_p != ':')
          {
            current_p++;
          }

          path_str_end_p = (char *) current_p++;

          err_line = (unsigned int) strtol ((char *) current_p, (char **) &current_p, 10);

          current_p++;

          err_col = (unsigned int) strtol ((char *) current_p, ((void*)0), 10);
          break;
        }
      }

      if (err_line != 0 && err_col != 0)
      {
        unsigned int curr_line = 1;

        bool is_printing_context = 0;
        unsigned int pos = 0;

        size_t source_size;


        *path_str_end_p = '\0';

        read_file (path_str_p, &source_size);


        *path_str_end_p = ':';


        while ((pos < source_size) && (buffer[pos] != '\0'))
        {
          if (buffer[pos] == '\n')
          {
            curr_line++;
          }

          if (err_line < SYNTAX_ERROR_CONTEXT_SIZE
              || (err_line >= curr_line
                  && (err_line - curr_line) <= SYNTAX_ERROR_CONTEXT_SIZE))
          {

            is_printing_context = 1;
          }

          if (curr_line > err_line)
          {
            break;
          }

          if (is_printing_context)
          {
            jerry_port_log (JERRY_LOG_LEVEL_ERROR, "%c", buffer[pos]);
          }

          pos++;
        }

        jerry_port_log (JERRY_LOG_LEVEL_ERROR, "\n");

        while (--err_col)
        {
          jerry_port_log (JERRY_LOG_LEVEL_ERROR, "~");
        }

        jerry_port_log (JERRY_LOG_LEVEL_ERROR, "^\n");
      }
    }
  }

  jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Script Error: %s\n", err_str_buf);
  jerry_release_value (err_str_val);
}
