; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_op_div.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/unifdef/extr_unifdef.c_op_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LT_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"eval division by zero\00", align 1
@LT_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64, i64, i64)* @op_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @op_div(i64* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %10, align 8
  %13 = load i64, i64* @LT_TRUE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = call i32 @debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @LT_ERROR, align 8
  store i64 %17, i64* %6, align 8
  br label %26

18:                                               ; preds = %5
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %11, align 8
  %22 = sdiv i64 %20, %21
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @op_strict(i64* %19, i64 %22, i64 %23, i64 %24)
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %18, %15
  %27 = load i64, i64* %6, align 8
  ret i64 %27
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i64 @op_strict(i64*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
