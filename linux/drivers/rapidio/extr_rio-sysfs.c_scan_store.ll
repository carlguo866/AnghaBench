; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-sysfs.c_scan_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio-sysfs.c_scan_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RIO_MPORT_ANY = common dso_local global i64 0, align 8
@RIO_MAX_MPORTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bus_type*, i8*, i64)* @scan_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_store(%struct.bus_type* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bus_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.bus_type* %0, %struct.bus_type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @kstrtol(i8* %10, i32 0, i64* %8)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %44

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @RIO_MPORT_ANY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (...) @rio_init_mports()
  store i32 %21, i32* %9, align 4
  br label %36

22:                                               ; preds = %16
  %23 = load i64, i64* %8, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @RIO_MAX_MPORTS, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %44

32:                                               ; preds = %25
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @rio_mport_scan(i32 %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %20
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %29, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @kstrtol(i8*, i32, i64*) #1

declare dso_local i32 @rio_init_mports(...) #1

declare dso_local i32 @rio_mport_scan(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
