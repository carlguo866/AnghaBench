; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_deu_danube.c_input_swap.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_deu_danube.c_input_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ifx_danube_pre_1_4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_swap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @ifx_danube_pre_1_4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  store i32* %3, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 3
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 %10, 24
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 16
  %16 = or i32 %11, %15
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = or i32 %16, %20
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  store i32 %25, i32* %2, align 4
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %7
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
