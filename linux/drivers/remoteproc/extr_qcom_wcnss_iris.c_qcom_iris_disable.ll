; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss_iris.c_qcom_iris_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss_iris.c_qcom_iris_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_iris = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qcom_iris_disable(%struct.qcom_iris* %0) #0 {
  %2 = alloca %struct.qcom_iris*, align 8
  store %struct.qcom_iris* %0, %struct.qcom_iris** %2, align 8
  %3 = load %struct.qcom_iris*, %struct.qcom_iris** %2, align 8
  %4 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @clk_disable_unprepare(i32 %5)
  %7 = load %struct.qcom_iris*, %struct.qcom_iris** %2, align 8
  %8 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.qcom_iris*, %struct.qcom_iris** %2, align 8
  %11 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regulator_bulk_disable(i32 %9, i32 %12)
  ret void
}

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
