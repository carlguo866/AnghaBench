; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_elt_data_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_events_hist.c_hist_elt_data_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_elt_data = type { %struct.hist_elt_data*, %struct.hist_elt_data** }

@SYNTH_FIELDS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_elt_data*)* @hist_elt_data_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_elt_data_free(%struct.hist_elt_data* %0) #0 {
  %2 = alloca %struct.hist_elt_data*, align 8
  %3 = alloca i32, align 4
  store %struct.hist_elt_data* %0, %struct.hist_elt_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @SYNTH_FIELDS_MAX, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load %struct.hist_elt_data*, %struct.hist_elt_data** %2, align 8
  %10 = getelementptr inbounds %struct.hist_elt_data, %struct.hist_elt_data* %9, i32 0, i32 1
  %11 = load %struct.hist_elt_data**, %struct.hist_elt_data*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.hist_elt_data*, %struct.hist_elt_data** %11, i64 %13
  %15 = load %struct.hist_elt_data*, %struct.hist_elt_data** %14, align 8
  %16 = call i32 @kfree(%struct.hist_elt_data* %15)
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4

20:                                               ; preds = %4
  %21 = load %struct.hist_elt_data*, %struct.hist_elt_data** %2, align 8
  %22 = getelementptr inbounds %struct.hist_elt_data, %struct.hist_elt_data* %21, i32 0, i32 0
  %23 = load %struct.hist_elt_data*, %struct.hist_elt_data** %22, align 8
  %24 = call i32 @kfree(%struct.hist_elt_data* %23)
  %25 = load %struct.hist_elt_data*, %struct.hist_elt_data** %2, align 8
  %26 = call i32 @kfree(%struct.hist_elt_data* %25)
  ret void
}

declare dso_local i32 @kfree(%struct.hist_elt_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
