; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpuexit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpuexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i32 }

@curthread = common dso_local global i64 0, align 8
@fpcurthread = common dso_local global i32 0, align 4
@curpcb = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpuexit(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %3 = call i32 (...) @critical_enter()
  %4 = load i64, i64* @curthread, align 8
  %5 = load i32, i32* @fpcurthread, align 4
  %6 = call i64 @PCPU_GET(i32 %5)
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = call i32 (...) @stop_emulating()
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curpcb, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @fpusave(i32 %12)
  %14 = call i32 (...) @start_emulating()
  %15 = load i32, i32* @fpcurthread, align 4
  %16 = call i32 @PCPU_SET(i32 %15, i32* null)
  br label %17

17:                                               ; preds = %8, %1
  %18 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @stop_emulating(...) #1

declare dso_local i32 @fpusave(i32) #1

declare dso_local i32 @start_emulating(...) #1

declare dso_local i32 @PCPU_SET(i32, i32*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
