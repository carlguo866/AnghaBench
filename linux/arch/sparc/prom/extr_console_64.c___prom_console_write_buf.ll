; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/prom/extr_console_64.c___prom_console_write_buf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/prom/extr_console_64.c___prom_console_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1
@prom_stdout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @__prom_console_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__prom_console_write_buf(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [7 x i64], align 16
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds [7 x i64], [7 x i64]* %6, i64 0, i64 0
  store i64 ptrtoint ([6 x i8]* @.str to i64), i64* %8, align 16
  %9 = getelementptr inbounds [7 x i64], [7 x i64]* %6, i64 0, i64 1
  store i64 3, i64* %9, align 8
  %10 = getelementptr inbounds [7 x i64], [7 x i64]* %6, i64 0, i64 2
  store i64 1, i64* %10, align 16
  %11 = load i64, i64* @prom_stdout, align 8
  %12 = trunc i64 %11 to i32
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [7 x i64], [7 x i64]* %6, i64 0, i64 3
  store i64 %13, i64* %14, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = getelementptr inbounds [7 x i64], [7 x i64]* %6, i64 0, i64 4
  store i64 %16, i64* %17, align 16
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [7 x i64], [7 x i64]* %6, i64 0, i64 5
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds [7 x i64], [7 x i64]* %6, i64 0, i64 6
  store i64 -1, i64* %21, align 16
  %22 = getelementptr inbounds [7 x i64], [7 x i64]* %6, i64 0, i64 0
  %23 = call i32 @p1275_cmd_direct(i64* %22)
  %24 = getelementptr inbounds [7 x i64], [7 x i64]* %6, i64 0, i64 6
  %25 = load i64, i64* %24, align 16
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %29
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @p1275_cmd_direct(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
