
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JPWL_EXPECTED_COMPONENTS ;
 int fprintf (int ,char*,...) ;
 int stdout ;

void decode_help_display(void)
{
    fprintf(stdout, "HELP for j2k_to_image\n----\n\n");
    fprintf(stdout, "- the -h option displays this help information on screen\n\n");


    fprintf(stdout, "List of parameters for the JPEG 2000 "



            "decoder:\n");

    fprintf(stdout, "\n");
    fprintf(stdout, "\n");
    fprintf(stdout, "  -ImgDir \n");
    fprintf(stdout, "	Image file Directory path \n");
    fprintf(stdout, "  -OutFor \n");
    fprintf(stdout, "    REQUIRED only if -ImgDir is used\n");
    fprintf(stdout, "	  Need to specify only format without filename <BMP>  \n");
    fprintf(stdout,
            "    Currently accepts PGM, PPM, PNM, PGX, PNG, BMP, TIF, RAW and TGA formats\n");
    fprintf(stdout, "  -i <compressed file>\n");
    fprintf(stdout,
            "    REQUIRED only if an Input image directory not specified\n");
    fprintf(stdout,
            "    Currently accepts J2K-files, JP2-files and JPT-files. The file type\n");
    fprintf(stdout, "    is identified based on its suffix.\n");
    fprintf(stdout, "  -o <decompressed file>\n");
    fprintf(stdout, "    REQUIRED\n");
    fprintf(stdout,
            "    Currently accepts PGM, PPM, PNM, PGX, PNG, BMP, TIF, RAW and TGA files\n");
    fprintf(stdout,
            "    Binary data is written to the file (not ascii). If a PGX\n");
    fprintf(stdout,
            "    filename is given, there will be as many output files as there are\n");
    fprintf(stdout,
            "    components: an indice starting from 0 will then be appended to the\n");
    fprintf(stdout,
            "    output filename, just before the \"pgx\" extension. If a PGM filename\n");
    fprintf(stdout,
            "    is given and there are more than one component, only the first component\n");
    fprintf(stdout, "    will be written to the file.\n");
    fprintf(stdout, "  -r <reduce factor>\n");
    fprintf(stdout,
            "    Set the number of highest resolution levels to be discarded. The\n");
    fprintf(stdout,
            "    image resolution is effectively divided by 2 to the power of the\n");
    fprintf(stdout,
            "    number of discarded levels. The reduce factor is limited by the\n");
    fprintf(stdout,
            "    smallest total number of decomposition levels among tiles.\n");
    fprintf(stdout, "  -l <number of quality layers to decode>\n");
    fprintf(stdout,
            "    Set the maximum number of quality layers to decode. If there are\n");
    fprintf(stdout,
            "    less quality layers than the specified number, all the quality layers\n");
    fprintf(stdout, "    are decoded.\n");
    fprintf(stdout, "  -x  \n");
    fprintf(stdout, "    Create an index file *.Idx (-x index_name.Idx) \n");
    fprintf(stdout, "\n");
    fprintf(stdout, "\n");
}
