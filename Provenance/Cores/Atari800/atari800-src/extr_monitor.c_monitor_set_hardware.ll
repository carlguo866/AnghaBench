; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_monitor_set_hardware.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_monitor_set_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [48 x i8] c"Changed memory from %04X to %04X into HARDWARE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @monitor_set_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_set_hardware() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i64 @get_attrib_range(i32* %1, i32* %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @MEMORY_SetHARDWARE(i32 %6, i32 %7)
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %5, %0
  ret void
}

declare dso_local i64 @get_attrib_range(i32*, i32*) #1

declare dso_local i32 @MEMORY_SetHARDWARE(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
