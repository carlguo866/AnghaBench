; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_juli.c_ak4358_proc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_juli.c_ak4358_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32 }
%struct.snd_info_entry = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"ak4358_codec\00", align 1
@ak4358_proc_regs_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*)* @ak4358_proc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ak4358_proc_init(%struct.snd_ice1712* %0) #0 {
  %2 = alloca %struct.snd_ice1712*, align 8
  %3 = alloca %struct.snd_info_entry*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %2, align 8
  %4 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %5 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @snd_card_proc_new(i32 %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.snd_info_entry** %3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %2, align 8
  %12 = load i32, i32* @ak4358_proc_regs_read, align 4
  %13 = call i32 @snd_info_set_text_ops(%struct.snd_info_entry* %10, %struct.snd_ice1712* %11, i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @snd_card_proc_new(i32, i8*, %struct.snd_info_entry**) #1

declare dso_local i32 @snd_info_set_text_ops(%struct.snd_info_entry*, %struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
