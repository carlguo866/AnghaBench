; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc7323.c_t3_vsc7323_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc7323.c_t3_vsc7323_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_vsc7323_disable(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @VSC_REG(i32 1, i32 %11, i32 0)
  %13 = call i32 @t3_elmr_blk_read(i32* %10, i32 %12, i32* %8, i32 1)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %44, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, -2
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, -3
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @VSC_REG(i32 1, i32 %39, i32 0)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @elmr_write(i32* %38, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %37, %33
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @t3_elmr_blk_read(i32*, i32, i32*, i32) #1

declare dso_local i32 @VSC_REG(i32, i32, i32) #1

declare dso_local i32 @elmr_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
