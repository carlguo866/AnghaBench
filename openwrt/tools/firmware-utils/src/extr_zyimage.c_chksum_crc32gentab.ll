; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_zyimage.c_chksum_crc32gentab.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_zyimage.c_chksum_crc32gentab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc_tab = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chksum_crc32gentab() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 3988292384, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %36, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 256
  br i1 %7, label %8, label %39

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %1, align 8
  store i32 8, i32* %4, align 4
  br label %11

11:                                               ; preds = %27, %8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load i64, i64* %1, align 8
  %16 = and i64 %15, 1
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load i64, i64* %1, align 8
  %20 = lshr i64 %19, 1
  %21 = load i64, i64* %2, align 8
  %22 = xor i64 %20, %21
  store i64 %22, i64* %1, align 8
  br label %26

23:                                               ; preds = %14
  %24 = load i64, i64* %1, align 8
  %25 = lshr i64 %24, 1
  store i64 %25, i64* %1, align 8
  br label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load i64, i64* %1, align 8
  %32 = load i64*, i64** @crc_tab, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 %31, i64* %35, align 8
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %5

39:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
