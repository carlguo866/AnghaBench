; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_tx_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_tx_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s tx_abort\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @tx_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_abort(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i64, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @DBGINFO(i8* %8)
  %10 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %11 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %10, i32 0, i32 0
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %15 = call i32 @tdma_reset(%struct.slgt_info* %14)
  %16 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %17 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %16, i32 0, i32 0
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  ret i32 0
}

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tdma_reset(%struct.slgt_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
