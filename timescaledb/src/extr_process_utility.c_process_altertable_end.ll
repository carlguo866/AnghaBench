; ModuleID = '/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_altertable_end.c'
source_filename = "/home/carl/AnghaBench/timescaledb/src/extr_process_utility.c_process_altertable_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @process_altertable_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_altertable_end(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = bitcast i32* %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %19 [
    i32 128, label %11
    i32 129, label %15
  ]

11:                                               ; preds = %2
  %12 = load i32*, i32** %3, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @process_altertable_end_table(i32* %12, i32* %13)
  br label %20

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @process_altertable_end_index(i32* %16, i32* %17)
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %15, %11
  ret void
}

declare dso_local i32 @process_altertable_end_table(i32*, i32*) #1

declare dso_local i32 @process_altertable_end_index(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
