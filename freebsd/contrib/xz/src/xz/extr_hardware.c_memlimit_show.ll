; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_hardware.c_memlimit_show.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_hardware.c_memlimit_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Disabled\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s %s MiB (%s B)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @memlimit_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memlimit_show(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @UINT64_MAX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7, %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13)
  br label %23

15:                                               ; preds = %7
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @round_up_to_mib(i64 %17)
  %19 = call i8* @uint64_to_str(i64 %18, i32 0)
  %20 = load i64, i64* %4, align 8
  %21 = call i8* @uint64_to_str(i64 %20, i32 1)
  %22 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %16, i8* %19, i8* %21)
  br label %23

23:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @uint64_to_str(i64, i32) #1

declare dso_local i64 @round_up_to_mib(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
