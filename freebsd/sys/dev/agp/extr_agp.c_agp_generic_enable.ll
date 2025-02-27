; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_generic_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_generic_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"can't find display\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AGP_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @agp_generic_enable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = call i32 (...) @agp_find_display()
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = call i32 @AGP_DPF(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @agp_find_caps(i32 %17)
  %19 = load i64, i64* @AGP_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @pci_read_config(i32 %16, i64 %20, i32 4)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @agp_find_caps(i32 %23)
  %25 = load i64, i64* @AGP_STATUS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @pci_read_config(i32 %22, i64 %26, i32 4)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @AGP_MODE_GET_MODE_3(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %15
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @AGP_MODE_GET_MODE_3(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @AGP_MODE_GET_MODE_3(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @agp_v3_enable(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %35, %31, %15
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @agp_v2_enable(i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %39, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @agp_find_display(...) #1

declare dso_local i32 @AGP_DPF(i8*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i64 @agp_find_caps(i32) #1

declare dso_local i64 @AGP_MODE_GET_MODE_3(i32) #1

declare dso_local i32 @agp_v3_enable(i32, i32, i32) #1

declare dso_local i32 @agp_v2_enable(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
