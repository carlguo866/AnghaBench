; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_isci.h_check_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_isci.h_check_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCU_MAX_EVENTS = common dso_local global i32 0, align 4
@SCU_MAX_UNSOLICITED_FRAMES = common dso_local global i32 0, align 4
@SCU_MAX_COMPLETION_QUEUE_ENTRIES = common dso_local global i32 0, align 4
@SCU_ABSOLUTE_MAX_UNSOLICITED_FRAMES = common dso_local global i32 0, align 4
@SCI_MAX_IO_REQUESTS = common dso_local global i32 0, align 4
@SCI_MAX_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_sizes() #0 {
  %1 = load i32, i32* @SCU_MAX_EVENTS, align 4
  %2 = call i32 @BUILD_BUG_ON_NOT_POWER_OF_2(i32 %1)
  %3 = load i32, i32* @SCU_MAX_UNSOLICITED_FRAMES, align 4
  %4 = icmp sle i32 %3, 8
  %5 = zext i1 %4 to i32
  %6 = call i32 @BUILD_BUG_ON(i32 %5)
  %7 = load i32, i32* @SCU_MAX_UNSOLICITED_FRAMES, align 4
  %8 = call i32 @BUILD_BUG_ON_NOT_POWER_OF_2(i32 %7)
  %9 = load i32, i32* @SCU_MAX_COMPLETION_QUEUE_ENTRIES, align 4
  %10 = call i32 @BUILD_BUG_ON_NOT_POWER_OF_2(i32 %9)
  %11 = load i32, i32* @SCU_MAX_UNSOLICITED_FRAMES, align 4
  %12 = load i32, i32* @SCU_ABSOLUTE_MAX_UNSOLICITED_FRAMES, align 4
  %13 = icmp sgt i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load i32, i32* @SCI_MAX_IO_REQUESTS, align 4
  %17 = call i32 @BUILD_BUG_ON_NOT_POWER_OF_2(i32 %16)
  %18 = load i32, i32* @SCI_MAX_SEQ, align 4
  %19 = call i32 @BUILD_BUG_ON_NOT_POWER_OF_2(i32 %18)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON_NOT_POWER_OF_2(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
