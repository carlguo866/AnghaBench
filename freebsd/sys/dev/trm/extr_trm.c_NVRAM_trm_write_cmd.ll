; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_NVRAM_trm_write_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/trm/extr_trm.c_NVRAM_trm_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NVR_SELECT = common dso_local global i32 0, align 4
@NVR_BITOUT = common dso_local global i32 0, align 4
@TRMREG_GEN_NVRAM = common dso_local global i32 0, align 4
@NVR_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @NVRAM_trm_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @NVRAM_trm_write_cmd(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %34, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %39

12:                                               ; preds = %9
  %13 = load i32, i32* @NVR_SELECT, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @NVR_BITOUT, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %24 = call i32 @trm_reg_write8(i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @NVRAM_trm_wait_30us(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NVR_CLOCK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %31 = call i32 @trm_reg_write8(i32 %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @NVRAM_trm_wait_30us(i32 %32)
  br label %34

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %9

39:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %65, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 7
  br i1 %42, label %43, label %70

43:                                               ; preds = %40
  %44 = load i32, i32* @NVR_SELECT, align 4
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 64
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @NVR_BITOUT, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %55 = call i32 @trm_reg_write8(i32 %53, i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @NVRAM_trm_wait_30us(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @NVR_CLOCK, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %62 = call i32 @trm_reg_write8(i32 %60, i32 %61)
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @NVRAM_trm_wait_30us(i32 %63)
  br label %65

65:                                               ; preds = %52
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = shl i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %40

70:                                               ; preds = %40
  %71 = load i32, i32* @NVR_SELECT, align 4
  %72 = load i32, i32* @TRMREG_GEN_NVRAM, align 4
  %73 = call i32 @trm_reg_write8(i32 %71, i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @NVRAM_trm_wait_30us(i32 %74)
  ret void
}

declare dso_local i32 @trm_reg_write8(i32, i32) #1

declare dso_local i32 @NVRAM_trm_wait_30us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
