; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_hw_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_hw_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_dev_info = type { i32 }

@SEC_MAX_SAA_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec_dev_info*)* @sec_hw_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_hw_exit(%struct.sec_dev_info* %0) #0 {
  %2 = alloca %struct.sec_dev_info*, align 8
  %3 = alloca i32, align 4
  store %struct.sec_dev_info* %0, %struct.sec_dev_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @SEC_MAX_SAA_NUM, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load %struct.sec_dev_info*, %struct.sec_dev_info** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @sec_saa_int_mask(%struct.sec_dev_info* %9, i32 %10, i32 -1)
  %12 = load %struct.sec_dev_info*, %struct.sec_dev_info** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @sec_saa_getqm_en(%struct.sec_dev_info* %12, i32 %13, i32 0)
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %4

18:                                               ; preds = %4
  ret void
}

declare dso_local i32 @sec_saa_int_mask(%struct.sec_dev_info*, i32, i32) #1

declare dso_local i32 @sec_saa_getqm_en(%struct.sec_dev_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
