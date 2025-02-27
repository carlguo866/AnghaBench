; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bt431.h_bt431_set_font.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_bt431.h_bt431_set_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt431_regs = type { i32 }

@BT431_REG_CRAM_BASE = common dso_local global i32 0, align 4
@BT431_REG_CRAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bt431_regs*, i64, i32, i32)* @bt431_set_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt431_set_font(%struct.bt431_regs* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bt431_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bt431_regs* %0, %struct.bt431_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 65535, i32 0
  store i32 %16, i32* %10, align 4
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 65535
  store i32 %20, i32* %11, align 4
  %21 = load %struct.bt431_regs*, %struct.bt431_regs** %5, align 8
  %22 = load i32, i32* @BT431_REG_CRAM_BASE, align 4
  %23 = call i32 @bt431_select_reg(%struct.bt431_regs* %21, i32 %22)
  %24 = load i32, i32* @BT431_REG_CRAM_BASE, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %69, %4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @BT431_REG_CRAM_END, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %72

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 6
  %32 = load i32, i32* %9, align 4
  %33 = shl i32 %32, 3
  %34 = icmp sle i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %12, align 4
  br label %65

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = srem i32 %39, 8
  %41 = shl i32 %40, 3
  %42 = icmp sle i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %12, align 4
  br label %64

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 3
  %48 = and i32 %47, 65535
  %49 = load i32, i32* %9, align 4
  %50 = srem i32 %49, 8
  %51 = icmp sgt i32 %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %12, align 4
  br label %63

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %7, align 4
  %58 = srem i32 %57, 8
  %59 = shl i32 %58, 1
  %60 = shl i32 %56, %59
  %61 = xor i32 %60, -1
  %62 = and i32 %55, %61
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %54, %52
  br label %64

64:                                               ; preds = %63, %43
  br label %65

65:                                               ; preds = %64, %35
  %66 = load %struct.bt431_regs*, %struct.bt431_regs** %5, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @bt431_write_cmap_inc(%struct.bt431_regs* %66, i32 %67)
  br label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %25

72:                                               ; preds = %25
  ret void
}

declare dso_local i32 @bt431_select_reg(%struct.bt431_regs*, i32) #1

declare dso_local i32 @bt431_write_cmap_inc(%struct.bt431_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
