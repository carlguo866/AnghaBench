; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_prodigy_hifi.c_wm_proc_regs_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_prodigy_hifi.c_wm_proc_regs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { i32 }
%struct.snd_info_buffer = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%02x = %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @wm_proc_regs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm_proc_regs_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_ice1712*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %8 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %9 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %8, i32 0, i32 0
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %9, align 8
  store %struct.snd_ice1712* %10, %struct.snd_ice1712** %5, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %25, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 23
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @wm_get(%struct.snd_ice1712* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @snd_iprintf(%struct.snd_info_buffer* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %5, align 8
  %30 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wm_get(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
