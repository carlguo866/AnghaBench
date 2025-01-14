
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_integrity_c {int free_sectors; int journal_section_entries; int n_uncommitted_sections; int journal_sections; int n_committed_sections; int free_section; scalar_t__ free_section_entry; } ;


 int DMCRIT (char*,int,int,int,int,int,int) ;
 scalar_t__ WARN_ON (int) ;
 int wraparound_section (struct dm_integrity_c*,int *) ;

__attribute__((used)) static void pad_uncommitted(struct dm_integrity_c *ic)
{
 if (ic->free_section_entry) {
  ic->free_sectors -= ic->journal_section_entries - ic->free_section_entry;
  ic->free_section_entry = 0;
  ic->free_section++;
  wraparound_section(ic, &ic->free_section);
  ic->n_uncommitted_sections++;
 }
 if (WARN_ON(ic->journal_sections * ic->journal_section_entries !=
      (ic->n_uncommitted_sections + ic->n_committed_sections) *
      ic->journal_section_entries + ic->free_sectors)) {
  DMCRIT("journal_sections %u, journal_section_entries %u, "
         "n_uncommitted_sections %u, n_committed_sections %u, "
         "journal_section_entries %u, free_sectors %u",
         ic->journal_sections, ic->journal_section_entries,
         ic->n_uncommitted_sections, ic->n_committed_sections,
         ic->journal_section_entries, ic->free_sectors);
 }
}
