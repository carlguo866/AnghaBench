; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_dso-data.c_dso__data_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_dso-data.c_dso__data_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.machine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, %struct.machine*)* @dso__data_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dso__data_fd(%struct.dso* %0, %struct.machine* %1) #0 {
  %3 = alloca %struct.dso*, align 8
  %4 = alloca %struct.machine*, align 8
  %5 = alloca i32, align 4
  store %struct.dso* %0, %struct.dso** %3, align 8
  store %struct.machine* %1, %struct.machine** %4, align 8
  %6 = load %struct.dso*, %struct.dso** %3, align 8
  %7 = load %struct.machine*, %struct.machine** %4, align 8
  %8 = call i32 @dso__data_get_fd(%struct.dso* %6, %struct.machine* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.dso*, %struct.dso** %3, align 8
  %13 = call i32 @dso__data_put_fd(%struct.dso* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @dso__data_get_fd(%struct.dso*, %struct.machine*) #1

declare dso_local i32 @dso__data_put_fd(%struct.dso*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
