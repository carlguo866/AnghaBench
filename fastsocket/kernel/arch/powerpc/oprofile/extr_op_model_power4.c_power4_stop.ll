; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_power4.c_power4_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_power4.c_power4_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPRN_MMCR0 = common dso_local global i32 0, align 4
@MMCR0_FC = common dso_local global i32 0, align 4
@oprofile_running = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"stop on cpu %d, mmcr0 %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @power4_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power4_stop() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @SPRN_MMCR0, align 4
  %3 = call i32 @mfspr(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @MMCR0_FC, align 4
  %5 = load i32, i32* %1, align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @SPRN_MMCR0, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @mtspr(i32 %7, i32 %8)
  store i64 0, i64* @oprofile_running, align 8
  %10 = call i32 (...) @smp_processor_id()
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @dbg(i8*, i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
