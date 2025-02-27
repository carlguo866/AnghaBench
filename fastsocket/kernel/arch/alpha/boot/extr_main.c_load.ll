; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/boot/extr_main.c_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/boot/extr_main.c_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_end = external dso_local global i8, align 1
@BOOT_ADDR = common dso_local global i64 0, align 8
@ENV_BOOTED_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Boot file specification (%s) not implemented\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64)* @load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* @BOOT_ADDR, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = sub i64 ptrtoint (i8* @_end to i64), %13
  store i64 %14, i64* %10, align 8
  %15 = load i32, i32* @ENV_BOOTED_FILE, align 4
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %17 = call i64 @callback_getenv(i32 %15, i8* %16, i32 255)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %4, align 8
  br label %41

22:                                               ; preds = %3
  %23 = load i64, i64* %9, align 8
  %24 = and i64 %23, 255
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %31 = call i32 @srm_printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i64, i64* %10, align 8
  %38 = sdiv i64 %37, 512
  %39 = add nsw i64 %38, 1
  %40 = call i64 @callback_read(i64 %33, i64 %34, i8* %36, i64 %39)
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %32, %20
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i64 @callback_getenv(i32, i8*, i32) #1

declare dso_local i32 @srm_printk(i8*, i8*) #1

declare dso_local i64 @callback_read(i64, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
