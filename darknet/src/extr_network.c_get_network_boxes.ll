; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_network.c_get_network_boxes.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_network.c_get_network_boxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_network_boxes(i32* %0, i32 %1, i32 %2, float %3, float %4, i32* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load float, float* %12, align 4
  %20 = load i32*, i32** %16, align 8
  %21 = call i32* @make_network_boxes(i32* %18, float %19, i32* %20)
  store i32* %21, i32** %17, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load float, float* %12, align 4
  %26 = load float, float* %13, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i32*, i32** %17, align 8
  %30 = call i32 @fill_network_boxes(i32* %22, i32 %23, i32 %24, float %25, float %26, i32* %27, i32 %28, i32* %29)
  %31 = load i32*, i32** %17, align 8
  ret i32* %31
}

declare dso_local i32* @make_network_boxes(i32*, float, i32*) #1

declare dso_local i32 @fill_network_boxes(i32*, i32, i32, float, float, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
