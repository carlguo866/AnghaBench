; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_get_fmt_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_get_fmt_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mipid02_supported_fmt_codes = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @get_fmt_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_fmt_code(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i64*, i64** @mipid02_supported_fmt_codes, align 8
  %8 = call i32 @ARRAY_SIZE(i64* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = load i64, i64* %3, align 8
  %12 = load i64*, i64** @mipid02_supported_fmt_codes, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %11, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i64, i64* %3, align 8
  store i64 %19, i64* %2, align 8
  br label %28

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %5

24:                                               ; preds = %5
  %25 = load i64*, i64** @mipid02_supported_fmt_codes, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
