; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.h_ahg_header_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_user_sdma.h_ahg_header_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i32, i32, i32, i32)* @ahg_header_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahg_header_set(i32* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %11, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %7
  %21 = load i32, i32* @ERANGE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %35

23:                                               ; preds = %7
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @sdma_build_ahg_descriptor(i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %28, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %23, %20
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @sdma_build_ahg_descriptor(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
