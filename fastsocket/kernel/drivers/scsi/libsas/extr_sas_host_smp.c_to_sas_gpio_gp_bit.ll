; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_host_smp.c_to_sas_gpio_gp_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_host_smp.c_to_sas_gpio_gp_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, i32, i32, i32*)* @to_sas_gpio_gp_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @to_sas_gpio_gp_bit(i32 %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %52

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %21, 32
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32* null, i32** %6, align 8
  br label %52

25:                                               ; preds = %17
  %26 = load i32, i32* %9, align 4
  %27 = mul nsw i32 %26, 32
  %28 = load i32, i32* %7, align 4
  %29 = sub i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = lshr i32 %30, 5
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp uge i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32* null, i32** %6, align 8
  br label %52

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 31
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = lshr i32 %39, 3
  %41 = sub i32 3, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 7
  %44 = load i32*, i32** %11, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = mul i32 %46, 4
  %48 = load i32, i32* %13, align 4
  %49 = add i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  store i32* %51, i32** %6, align 8
  br label %52

52:                                               ; preds = %36, %35, %24, %16
  %53 = load i32*, i32** %6, align 8
  ret i32* %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
