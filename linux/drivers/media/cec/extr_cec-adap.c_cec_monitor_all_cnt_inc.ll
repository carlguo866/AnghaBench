; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_monitor_all_cnt_inc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-adap.c_cec_monitor_all_cnt_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i64 }

@adap_monitor_all_enable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cec_monitor_all_cnt_inc(%struct.cec_adapter* %0) #0 {
  %2 = alloca %struct.cec_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %10 = load i32, i32* @adap_monitor_all_enable, align 4
  %11 = call i32 @call_op(%struct.cec_adapter* %9, i32 %10, i32 1)
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.cec_adapter*, %struct.cec_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  br label %20

20:                                               ; preds = %15, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @call_op(%struct.cec_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
