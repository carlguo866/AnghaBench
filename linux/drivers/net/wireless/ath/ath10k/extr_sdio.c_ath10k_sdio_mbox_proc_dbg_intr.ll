; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_proc_dbg_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_proc_dbg_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"firmware crashed\0A\00", align 1
@MBOX_COUNT_DEC_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to clear debug interrupt: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_sdio_mbox_proc_dbg_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_mbox_proc_dbg_intr(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %6 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %8 = load i32, i32* @MBOX_COUNT_DEC_ADDRESS, align 4
  %9 = call i32 @ath10k_sdio_read32(%struct.ath10k* %7, i32 %8, i32* %3)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_warn(%struct.ath10k* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ath10k_sdio_read32(%struct.ath10k*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
