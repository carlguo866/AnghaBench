; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-info.c_record_proc_kallsyms.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_trace-event-info.c_record_proc_kallsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@output_fd = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @record_proc_kallsyms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_proc_kallsyms() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %2 = load i32, i32* @output_fd, align 4
  %3 = call i32 @write(i32 %2, i64* %1, i32 4)
  %4 = icmp ne i32 %3, 4
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @EIO, align 4
  %7 = sub nsw i32 0, %6
  br label %9

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i32 [ %7, %5 ], [ 0, %8 ]
  ret i32 %10
}

declare dso_local i32 @write(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
