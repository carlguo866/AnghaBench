; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_write_indirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_write_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_write_indirect(%struct.adapter* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  br label %13

13:                                               ; preds = %17, %6
  %14 = load i32, i32* %11, align 4
  %15 = add i32 %14, -1
  store i32 %15, i32* %11, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.adapter*, %struct.adapter** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %12, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %12, align 4
  %22 = call i32 @t4_write_reg(%struct.adapter* %18, i32 %19, i32 %20)
  %23 = load %struct.adapter*, %struct.adapter** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %10, align 8
  %27 = load i32, i32* %25, align 4
  %28 = call i32 @t4_write_reg(%struct.adapter* %23, i32 %24, i32 %27)
  br label %13

29:                                               ; preds = %13
  ret void
}

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
