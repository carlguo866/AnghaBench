; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_mixer.c_remove_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_mixer.c_remove_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_ctl_elem_id = type { i32, i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, i8*)* @remove_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_ctl(%struct.snd_card* %0, i8* %1) #0 {
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_ctl_elem_id, align 4
  store %struct.snd_card* %0, %struct.snd_card** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 @memset(%struct.snd_ctl_elem_id* %5, i32 0, i32 8)
  %7 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strcpy(i32 %8, i8* %9)
  %11 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %12 = getelementptr inbounds %struct.snd_ctl_elem_id, %struct.snd_ctl_elem_id* %5, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %14 = call i32 @snd_ctl_remove_id(%struct.snd_card* %13, %struct.snd_ctl_elem_id* %5)
  ret i32 %14
}

declare dso_local i32 @memset(%struct.snd_ctl_elem_id*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_ctl_remove_id(%struct.snd_card*, %struct.snd_ctl_elem_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
