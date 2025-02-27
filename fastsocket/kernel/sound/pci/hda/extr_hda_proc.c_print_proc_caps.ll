; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_proc_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_proc.c_print_proc_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_buffer = type { i32 }
%struct.hda_codec = type { i32 }

@AC_PAR_PROC_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"  Processing caps: benign=%d, ncoeff=%d\0A\00", align 1
@AC_PCAP_BENIGN = common dso_local global i32 0, align 4
@AC_PCAP_NUM_COEF = common dso_local global i32 0, align 4
@AC_PCAP_NUM_COEF_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_buffer*, %struct.hda_codec*, i32)* @print_proc_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_proc_caps(%struct.snd_info_buffer* %0, %struct.hda_codec* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.hda_codec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_info_buffer* %0, %struct.snd_info_buffer** %4, align 8
  store %struct.hda_codec* %1, %struct.hda_codec** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hda_codec*, %struct.hda_codec** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @AC_PAR_PROC_CAP, align 4
  %11 = call i32 @snd_hda_param_read(%struct.hda_codec* %8, i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @AC_PCAP_BENIGN, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @AC_PCAP_NUM_COEF, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @AC_PCAP_NUM_COEF_SHIFT, align 4
  %20 = lshr i32 %18, %19
  %21 = call i32 @snd_iprintf(%struct.snd_info_buffer* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20)
  ret void
}

declare dso_local i32 @snd_hda_param_read(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
