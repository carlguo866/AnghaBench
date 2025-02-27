; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_generic_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_n2-drv.c_n2rng_generic_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HV_EOK = common dso_local global i64 0, align 8
@HV_EWOULDBLOCK = common dso_local global i64 0, align 8
@N2RNG_BLOCK_LIMIT = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@HV_ENOACCESS = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@HV_EIO = common dso_local global i64 0, align 8
@N2RNG_HCHECK_LIMIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @n2rng_generic_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2rng_generic_read_data(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %1, %56
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @sun4v_rng_data_read(i64 %9, i64* %4)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @HV_EOK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %57

15:                                               ; preds = %8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @HV_EWOULDBLOCK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @N2RNG_BLOCK_LIMIT, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EWOULDBLOCK, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %57

27:                                               ; preds = %19
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @__delay(i64 %28)
  br label %56

30:                                               ; preds = %15
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @HV_ENOACCESS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %57

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @HV_EIO, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* @N2RNG_HCHECK_LIMIT, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %57

49:                                               ; preds = %41
  %50 = call i32 @udelay(i32 10000)
  br label %54

51:                                               ; preds = %37
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %49
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55, %27
  br label %8

57:                                               ; preds = %51, %46, %34, %24, %14
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @sun4v_rng_data_read(i64, i64*) #1

declare dso_local i32 @__delay(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
