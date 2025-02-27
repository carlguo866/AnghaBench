; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_sizeof_namespace_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_label.c_sizeof_namespace_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_drvdata = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"label area (%d) too small to host (%d byte) labels\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sizeof_namespace_index(%struct.nvdimm_drvdata* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nvdimm_drvdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvdimm_drvdata* %0, %struct.nvdimm_drvdata** %3, align 8
  %7 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %8 = call i32 @nvdimm_num_label_slots(%struct.nvdimm_drvdata* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %10 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %15 = call i32 @sizeof_namespace_label(%struct.nvdimm_drvdata* %14)
  %16 = mul nsw i32 %13, %15
  %17 = sub nsw i32 %12, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @__sizeof_namespace_index(i32 %18)
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %28, 2
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %2, align 8
  br label %42

31:                                               ; preds = %24, %1
  %32 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %33 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %36 = getelementptr inbounds %struct.nvdimm_drvdata, %struct.nvdimm_drvdata* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nvdimm_drvdata*, %struct.nvdimm_drvdata** %3, align 8
  %40 = call i32 @sizeof_namespace_label(%struct.nvdimm_drvdata* %39)
  %41 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40)
  store i64 0, i64* %2, align 8
  br label %42

42:                                               ; preds = %31, %27
  %43 = load i64, i64* %2, align 8
  ret i64 %43
}

declare dso_local i32 @nvdimm_num_label_slots(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @sizeof_namespace_label(%struct.nvdimm_drvdata*) #1

declare dso_local i32 @__sizeof_namespace_index(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
