; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_sec64.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_io.c_print_sec64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AU_OFLAG_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32)* @print_sec64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_sec64(i32* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [26 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @AU_OFLAG_RAW, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %26

18:                                               ; preds = %3
  %19 = load i64, i64* %5, align 8
  store i64 %19, i64* %7, align 8
  %20 = getelementptr inbounds [26 x i8], [26 x i8]* %8, i64 0, i64 0
  %21 = call i32 @ctime_r(i64* %7, i8* %20)
  %22 = getelementptr inbounds [26 x i8], [26 x i8]* %8, i64 0, i64 24
  store i8 0, i8* %22, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds [26 x i8], [26 x i8]* %8, i64 0, i64 0
  %25 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @ctime_r(i64*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
