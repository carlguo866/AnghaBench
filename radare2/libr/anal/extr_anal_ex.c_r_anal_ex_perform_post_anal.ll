; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_anal_ex.c_r_anal_ex_perform_post_anal.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_anal_ex.c_r_anal_ex_perform_post_anal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32)* @r_anal_ex_perform_post_anal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r_anal_ex_perform_post_anal(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp ne %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %3
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %9
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.TYPE_6__*, i32*, i32)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_6__*, i32*, i32)*, i32 (%struct.TYPE_6__*, i32*, i32)** %25, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 %26(%struct.TYPE_6__* %27, i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %21, %14, %9, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
