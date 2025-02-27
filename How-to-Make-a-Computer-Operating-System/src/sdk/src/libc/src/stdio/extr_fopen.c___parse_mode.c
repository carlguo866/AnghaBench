
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_TRUNC ;
 int O_WRONLY ;

int __parse_mode( const char* mode ) {
    int mode_flags = 0;

    for ( ;; ) {
        switch ( *mode ) {
            case 0 : return mode_flags;
            case 'b': break;
            case 'r': mode_flags = O_RDONLY; break;
            case 'w': mode_flags = O_WRONLY | O_CREAT | O_TRUNC; break;
            case 'a': mode_flags = O_WRONLY | O_CREAT | O_APPEND; break;
            case '+': mode_flags = ( mode_flags & ( ~O_WRONLY ) ) | O_RDWR; break;
            default : break;
        }

        ++mode;
    }
}
