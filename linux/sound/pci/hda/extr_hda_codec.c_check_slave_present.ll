; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_check_slave_present.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_check_slave_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.snd_kcontrol = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*, i8*, %struct.snd_kcontrol*)* @check_slave_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_slave_present(%struct.hda_codec* %0, i8* %1, %struct.snd_kcontrol* %2) #0 {
  %4 = alloca %struct.hda_codec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_kcontrol*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.snd_kcontrol* %2, %struct.snd_kcontrol** %6, align 8
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
