; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_llcc-slice.c_llcc_get_slice_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_llcc-slice.c_llcc_get_slice_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llcc_slice_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llcc_get_slice_id(%struct.llcc_slice_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.llcc_slice_desc*, align 8
  store %struct.llcc_slice_desc* %0, %struct.llcc_slice_desc** %3, align 8
  %4 = load %struct.llcc_slice_desc*, %struct.llcc_slice_desc** %3, align 8
  %5 = call i64 @IS_ERR_OR_NULL(%struct.llcc_slice_desc* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.llcc_slice_desc*, %struct.llcc_slice_desc** %3, align 8
  %12 = getelementptr inbounds %struct.llcc_slice_desc, %struct.llcc_slice_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %10, %7
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.llcc_slice_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
