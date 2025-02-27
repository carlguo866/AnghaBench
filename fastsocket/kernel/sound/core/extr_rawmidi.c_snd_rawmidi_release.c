
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_file {struct snd_rawmidi* rmidi; } ;
struct snd_rawmidi {TYPE_1__* card; } ;
struct module {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct snd_rawmidi_file* private_data; } ;
struct TYPE_2__ {struct module* module; } ;


 int kfree (struct snd_rawmidi_file*) ;
 int module_put (struct module*) ;
 int rawmidi_release_priv (struct snd_rawmidi_file*) ;
 int snd_card_file_remove (TYPE_1__*,struct file*) ;

__attribute__((used)) static int snd_rawmidi_release(struct inode *inode, struct file *file)
{
 struct snd_rawmidi_file *rfile;
 struct snd_rawmidi *rmidi;
 struct module *module;

 rfile = file->private_data;
 rmidi = rfile->rmidi;
 rawmidi_release_priv(rfile);
 kfree(rfile);
 module = rmidi->card->module;
 snd_card_file_remove(rmidi->card, file);
 module_put(module);
 return 0;
}
