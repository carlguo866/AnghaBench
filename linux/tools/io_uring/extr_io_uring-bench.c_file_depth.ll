; ModuleID = '/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_file_depth.c'
source_filename = "/home/carl/AnghaBench/linux/tools/io_uring/extr_io_uring-bench.c_file_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submitter = type { i32 }

@DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.submitter*)* @file_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_depth(%struct.submitter* %0) #0 {
  %2 = alloca %struct.submitter*, align 8
  store %struct.submitter* %0, %struct.submitter** %2, align 8
  %3 = load i32, i32* @DEPTH, align 4
  %4 = load %struct.submitter*, %struct.submitter** %2, align 8
  %5 = getelementptr inbounds %struct.submitter, %struct.submitter* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = add nsw i32 %3, %6
  %8 = sub nsw i32 %7, 1
  %9 = load %struct.submitter*, %struct.submitter** %2, align 8
  %10 = getelementptr inbounds %struct.submitter, %struct.submitter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %8, %11
  ret i32 %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
