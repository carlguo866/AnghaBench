; ModuleID = '/home/carl/AnghaBench/libui/unix/extr_entry.c_uiEntryOnChanged.c'
source_filename = "/home/carl/AnghaBench/libui/unix/extr_entry.c_uiEntryOnChanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { void (%struct.TYPE_5__*, i8*)*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uiEntryOnChanged(%struct.TYPE_5__* %0, void (%struct.TYPE_5__*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca void (%struct.TYPE_5__*, i8*)*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store void (%struct.TYPE_5__*, i8*)* %1, void (%struct.TYPE_5__*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load void (%struct.TYPE_5__*, i8*)*, void (%struct.TYPE_5__*, i8*)** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store void (%struct.TYPE_5__*, i8*)* %7, void (%struct.TYPE_5__*, i8*)** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
