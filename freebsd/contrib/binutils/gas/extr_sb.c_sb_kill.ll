; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_sb.c_sb_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_sb.c_sb_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }

@free_list = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sb_kill(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @free_list, i32 0, i32 0), align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %3, i64 %6
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %12, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @free_list, i32 0, i32 0), align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %16, i64 %19
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
