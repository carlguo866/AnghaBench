; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_sram_llseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mbcs.c_mbcs_sram_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }

@MBCS_SRAM_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i32)* @mbcs_sram_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mbcs_sram_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %22 [
    i32 128, label %10
    i32 130, label %12
    i32 129, label %18
  ]

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  store i64 %11, i64* %8, align 8
  br label %25

12:                                               ; preds = %3
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %8, align 8
  br label %25

18:                                               ; preds = %3
  %19 = load i64, i64* @MBCS_SRAM_SIZE, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %19, %20
  store i64 %21, i64* %8, align 8
  br label %25

22:                                               ; preds = %3
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %36

25:                                               ; preds = %18, %12, %10
  %26 = load i64, i64* %8, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %36

31:                                               ; preds = %25
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %4, align 8
  br label %36

36:                                               ; preds = %31, %28, %22
  %37 = load i64, i64* %4, align 8
  ret i64 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
