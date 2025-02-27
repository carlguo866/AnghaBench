; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_read_dev_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_read_dev_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DEV_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Message received with invalid device id: %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32)* @read_dev_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_dev_id(i8* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = call i32 @kstrtoull(i8* %8, i32 10, i64* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MAX_DEV_ID, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %27

18:                                               ; preds = %12, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @DMWARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

declare dso_local i32 @DMWARN(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
