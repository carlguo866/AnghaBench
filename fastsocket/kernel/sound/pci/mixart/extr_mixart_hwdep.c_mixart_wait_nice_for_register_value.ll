; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_hwdep.c_mixart_wait_nice_for_register_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/mixart/extr_mixart_hwdep.c_mixart_wait_nice_for_register_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixart_mgr = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixart_mgr*, i64, i32, i64, i64)* @mixart_wait_nice_for_register_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixart_wait_nice_for_register_value(%struct.mixart_mgr* %0, i64 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mixart_mgr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.mixart_mgr* %0, %struct.mixart_mgr** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* @HZ, align 8
  %17 = mul i64 %15, %16
  %18 = udiv i64 %17, 100
  %19 = add i64 %14, %18
  store i64 %19, i64* %12, align 8
  br label %20

20:                                               ; preds = %41, %5
  %21 = call i32 (...) @cond_resched()
  %22 = load %struct.mixart_mgr*, %struct.mixart_mgr** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @MIXART_MEM(%struct.mixart_mgr* %22, i64 %23)
  %25 = call i64 @readl_be(i32 %24)
  store i64 %25, i64* %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %49

33:                                               ; preds = %28
  br label %40

34:                                               ; preds = %20
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %49

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @jiffies, align 8
  %44 = call i64 @time_after_eq(i64 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %20, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %38, %32
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @readl_be(i32) #1

declare dso_local i32 @MIXART_MEM(%struct.mixart_mgr*, i64) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
