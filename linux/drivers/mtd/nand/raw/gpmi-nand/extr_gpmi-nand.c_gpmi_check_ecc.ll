; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_check_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_check_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { %struct.TYPE_2__*, %struct.bch_geometry }
%struct.TYPE_2__ = type { i64 }
%struct.bch_geometry = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*)* @gpmi_check_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_check_ecc(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpmi_nand_data*, align 8
  %4 = alloca %struct.bch_geometry*, align 8
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %3, align 8
  %5 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %6 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %5, i32 0, i32 1
  store %struct.bch_geometry* %6, %struct.bch_geometry** %4, align 8
  %7 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %8 = call i64 @GPMI_IS_MXS(%struct.gpmi_nand_data* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %12 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 14
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %28

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %19 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %22 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %20, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %17, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @GPMI_IS_MXS(%struct.gpmi_nand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
