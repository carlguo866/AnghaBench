; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_proc_get_gregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_proc_get_gregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @proc_get_gregs(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = call i32 @proc_get_status(%struct.TYPE_12__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32* null, i32** %2, align 8
  br label %23

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18, %8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32* %22, i32** %2, align 8
  br label %23

23:                                               ; preds = %19, %17
  %24 = load i32*, i32** %2, align 8
  ret i32* %24
}

declare dso_local i32 @proc_get_status(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
