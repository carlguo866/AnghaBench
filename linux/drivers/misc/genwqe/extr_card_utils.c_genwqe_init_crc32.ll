; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_init_crc32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_init_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRC32_POLYNOMIAL = common dso_local global i32 0, align 4
@crc32_tab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @genwqe_init_crc32() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %35, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %38

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = shl i32 %8, 24
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %26, %7
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, -2147483648
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = shl i32 %18, 1
  %20 = load i32, i32* @CRC32_POLYNOMIAL, align 4
  %21 = xor i32 %19, %20
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %2, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %2, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load i32, i32* %3, align 4
  %31 = load i32*, i32** @crc32_tab, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %4

38:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
