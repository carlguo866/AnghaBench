; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_jevents.c_get_maxfds.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_jevents.c_get_maxfds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32 }

@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_maxfds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_maxfds() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rlimit, align 4
  %3 = load i32, i32* @RLIMIT_NOFILE, align 4
  %4 = call i64 @getrlimit(i32 %3, %struct.rlimit* %2)
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RLIM_INFINITY, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i32 512, i32* %1, align 4
  br label %18

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 2
  %16 = call i32 @MIN(i32 %15, i32 512)
  store i32 %16, i32* %1, align 4
  br label %18

17:                                               ; preds = %0
  store i32 512, i32* %1, align 4
  br label %18

18:                                               ; preds = %17, %12, %11
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i64 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
