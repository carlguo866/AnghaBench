; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslutils.c_UtNodeIsDescendantOf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslutils.c_UtNodeIsDescendantOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UtNodeIsDescendantOf(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %8 = icmp eq %struct.TYPE_4__* %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %3, align 4
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %26, %16
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = icmp eq %struct.TYPE_4__* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %20
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %4, align 8
  br label %17

30:                                               ; preds = %17
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %24, %14, %9
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
