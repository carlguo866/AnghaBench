; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mvsas/extr_mv_chips.h_mvs_write_port_irq_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mvsas/extr_mv_chips.h_mvs_write_port_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_info = type { i32 }

@MVS_P0_INT_MASK = common dso_local global i32 0, align 4
@MVS_P4_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i32, i32)* @mvs_write_port_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_write_port_irq_mask(%struct.mvs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %8 = load i32, i32* @MVS_P0_INT_MASK, align 4
  %9 = load i32, i32* @MVS_P4_INT_MASK, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @mvs_write_port(%struct.mvs_info* %7, i32 %8, i32 %9, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @mvs_write_port(%struct.mvs_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
