; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmCPU.c_ml_get_maxbusdelay.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmCPU.c_ml_get_maxbusdelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@pmInitDone = common dso_local global i64 0, align 8
@pmDispatch = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ml_get_maxbusdelay() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* @pmInitDone, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmDispatch, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmDispatch, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (...)*, i32 (...)** %9, align 8
  %11 = icmp ne i32 (...)* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmDispatch, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (...)*, i32 (...)** %14, align 8
  %16 = call i32 (...) %15()
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %12, %7, %4, %0
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
