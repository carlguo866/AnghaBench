; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_anal_ex.c_r_anal_ex_perform_revisit_bb_cb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_anal_ex.c_r_anal_ex_perform_revisit_bb_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32)* @r_anal_ex_perform_revisit_bb_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r_anal_ex_perform_revisit_bb_cb(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %9
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.TYPE_6__*, i32*, i32)* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 %31(%struct.TYPE_6__* %32, i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %26, %19, %14, %9, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
