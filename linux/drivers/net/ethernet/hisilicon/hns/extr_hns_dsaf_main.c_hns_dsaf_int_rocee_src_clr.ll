; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_int_rocee_src_clr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_int_rocee_src_clr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }

@DSAF_ROCEE_INT_SRC_0_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i32, i32)* @hns_dsaf_int_rocee_src_clr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_int_rocee_src_clr(%struct.dsaf_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %8 = load i64, i64* @DSAF_ROCEE_INT_SRC_0_REG, align 8
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 4, %9
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %8, %11
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @dsaf_write_dev(%struct.dsaf_device* %7, i64 %12, i32 %13)
  ret void
}

declare dso_local i32 @dsaf_write_dev(%struct.dsaf_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
