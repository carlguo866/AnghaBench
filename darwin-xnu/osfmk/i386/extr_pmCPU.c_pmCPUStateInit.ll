; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmCPU.c_pmCPUStateInit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmCPU.c_pmCPUStateInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@pmDispatch = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@earlyTopology = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmCPUStateInit() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmDispatch, align 8
  %2 = icmp ne %struct.TYPE_2__* %1, null
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmDispatch, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (...)*, i32 (...)** %5, align 8
  %7 = icmp ne i32 (...)* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmDispatch, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (...)*, i32 (...)** %10, align 8
  %12 = call i32 (...) %11()
  br label %15

13:                                               ; preds = %3, %0
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* @earlyTopology, align 4
  br label %15

15:                                               ; preds = %13, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
