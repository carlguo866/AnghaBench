; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_set_odb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_set_odb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }

@ROCEE_DB_OTHERS_WL_REG = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_M = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_S = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_EMPTY_M = common dso_local global i32 0, align 4
@ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_EMPTY_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, i32, i32)* @hns_roce_set_odb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_set_odb(%struct.hns_roce_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %10 = load i32, i32* @ROCEE_DB_OTHERS_WL_REG, align 4
  %11 = call i32 @roce_read(%struct.hns_roce_dev* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @cpu_to_le32(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_M, align 4
  %16 = load i32, i32* @ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_S, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @roce_set_field(i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_EMPTY_M, align 4
  %21 = load i32, i32* @ROCEE_DB_OTHERS_WL_ROCEE_DB_OTH_WL_EMPTY_S, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @roce_set_field(i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %27 = load i32, i32* @ROCEE_DB_OTHERS_WL_REG, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @roce_write(%struct.hns_roce_dev* %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @roce_read(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @roce_write(%struct.hns_roce_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
