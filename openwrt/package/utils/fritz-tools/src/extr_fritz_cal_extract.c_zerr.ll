; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_cal_extract.c_zerr.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_cal_extract.c_zerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"error reading stdin\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"error writing stdout\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid compression level\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"invalid or incomplete deflate data\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"zlib version mismatch!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @zerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zerr(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %31 [
    i32 131, label %4
    i32 129, label %19
    i32 132, label %22
    i32 130, label %25
    i32 128, label %28
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @stdin, align 4
  %6 = call i32 @ferror(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %8, %4
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @ferror(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %11
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  br label %31

22:                                               ; preds = %1
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  br label %31

25:                                               ; preds = %1
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  br label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %1, %25, %22, %19, %18
  ret void
}

declare dso_local i32 @ferror(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
