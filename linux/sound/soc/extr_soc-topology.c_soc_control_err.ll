; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_control_err.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_soc_control_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i32 }
%struct.snd_soc_tplg_ctl_hdr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [74 x i8] c"ASoC: no complete mixer IO handler for %s type (g,p,i) %d:%d:%d at 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_tplg*, %struct.snd_soc_tplg_ctl_hdr*, i8*)* @soc_control_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc_control_err(%struct.soc_tplg* %0, %struct.snd_soc_tplg_ctl_hdr* %1, i8* %2) #0 {
  %4 = alloca %struct.soc_tplg*, align 8
  %5 = alloca %struct.snd_soc_tplg_ctl_hdr*, align 8
  %6 = alloca i8*, align 8
  store %struct.soc_tplg* %0, %struct.soc_tplg** %4, align 8
  store %struct.snd_soc_tplg_ctl_hdr* %1, %struct.snd_soc_tplg_ctl_hdr** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %8 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_soc_tplg_ctl_hdr*, %struct.snd_soc_tplg_ctl_hdr** %5, align 8
  %20 = getelementptr inbounds %struct.snd_soc_tplg_ctl_hdr, %struct.snd_soc_tplg_ctl_hdr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.soc_tplg*, %struct.soc_tplg** %4, align 8
  %24 = call i32 @soc_tplg_get_offset(%struct.soc_tplg* %23)
  %25 = call i32 @dev_err(i32 %9, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %14, i32 %18, i32 %22, i32 %24)
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @soc_tplg_get_offset(%struct.soc_tplg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
