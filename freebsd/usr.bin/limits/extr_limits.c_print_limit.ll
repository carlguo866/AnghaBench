; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/limits/extr_limits.c_print_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/limits/extr_limits.c_print_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RLIM_INFINITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i8*, i8*, i8*)* @print_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_limit(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [64 x i8], align 16
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @RLIM_INFINITY, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @strlcpy(i8* %18, i8* %19, i32 64)
  br label %30

21:                                               ; preds = %6
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = udiv i32 %24, 2
  %26 = add i32 %23, %25
  %27 = load i32, i32* %8, align 4
  %28 = udiv i32 %26, %27
  %29 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %21, %17
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %34 = call i32 (i8*, i8*, ...) @printf(i8* %31, i8* %32, i8* %33)
  %35 = load i8*, i8** %11, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 (i8*, i8*, ...) @printf(i8* %35, i8* %36)
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
