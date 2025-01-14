
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double u64 ;


 char* HzToHuman (double) ;
 double SLOT_HEIGHT ;
 double SLOT_MULT ;
 int cpu2y (int) ;
 int fprintf (int ,char*,...) ;
 int max_freq ;
 int svgfile ;
 double time2pixels (double) ;

void svg_pstate(int cpu, u64 start, u64 end, u64 freq)
{
 double height = 0;

 if (!svgfile)
  return;

 fprintf(svgfile, "<g>\n");

 if (max_freq)
  height = freq * 1.0 / max_freq * (SLOT_HEIGHT + SLOT_MULT);
 height = 1 + cpu2y(cpu) + SLOT_MULT + SLOT_HEIGHT - height;
 fprintf(svgfile, "<line x1=\"%.8f\" x2=\"%.8f\" y1=\"%.1f\" y2=\"%.1f\" class=\"pstate\"/>\n",
  time2pixels(start), time2pixels(end), height, height);
 fprintf(svgfile, "<text x=\"%.8f\" y=\"%.8f\" font-size=\"0.25pt\">%s</text>\n",
  time2pixels(start), height+0.9, HzToHuman(freq));

 fprintf(svgfile, "</g>\n");
}
