; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/virtio/virtio-trace/extr_trace-agent.c_parse_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/virtio/virtio-trace/extr_trace-agent.c_parse_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PIPE_MAX_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Pipe size must be less than 1MB\0A\00", align 1
@PIPE_MIN_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Pipe size must be over 64KB\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @parse_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_size(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strtoul(i8* %7, i8** %6, i32 10)
  store i64 %8, i64* %4, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %18 [
    i32 75, label %12
    i32 107, label %12
    i32 77, label %15
    i32 109, label %15
  ]

12:                                               ; preds = %1, %1
  %13 = load i64, i64* %4, align 8
  %14 = shl i64 %13, 10
  store i64 %14, i64* %4, align 8
  br label %19

15:                                               ; preds = %1, %1
  %16 = load i64, i64* %4, align 8
  %17 = shl i64 %16, 20
  store i64 %17, i64* %4, align 8
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %15, %12
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @PIPE_MAX_SIZE, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %42

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @PIPE_MIN_SIZE, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %42

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = and i64 %33, %36
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub i64 %38, %39
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %2, align 8
  br label %43

42:                                               ; preds = %29, %23
  store i64 0, i64* %2, align 8
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i64, i64* %2, align 8
  ret i64 %44
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
