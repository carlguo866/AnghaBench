; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_reshape_direction_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_reshape_direction_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"forwards\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"backwards\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mddev*, i8*, i64)* @reshape_direction_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reshape_direction_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @cmd_match(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %22

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @cmd_match(i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %8, align 4
  br label %21

18:                                               ; preds = %13
  %19 = load i64, i64* @EINVAL, align 8
  %20 = sub i64 0, %19
  store i64 %20, i64* %4, align 8
  br label %56

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %12
  %23 = load %struct.mddev*, %struct.mddev** %5, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* %7, align 8
  store i64 %29, i64* %4, align 8
  br label %56

30:                                               ; preds = %22
  %31 = load %struct.mddev*, %struct.mddev** %5, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i64, i64* @EBUSY, align 8
  %37 = sub i64 0, %36
  store i64 %37, i64* %4, align 8
  br label %56

38:                                               ; preds = %30
  %39 = load %struct.mddev*, %struct.mddev** %5, align 8
  %40 = getelementptr inbounds %struct.mddev, %struct.mddev* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.mddev*, %struct.mddev** %5, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i64, i64* @EINVAL, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %4, align 8
  br label %56

51:                                               ; preds = %43, %38
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.mddev*, %struct.mddev** %5, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i64, i64* %7, align 8
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %51, %48, %35, %28, %18
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i64 @cmd_match(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
