; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_refclk_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_refclk_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@TG3_EAV_REF_CLCK_CTL = common dso_local global i32 0, align 4
@TG3_EAV_REF_CLCK_CTL_STOP = common dso_local global i32 0, align 4
@TG3_EAV_REF_CLCK_LSB = common dso_local global i32 0, align 4
@TG3_EAV_REF_CLCK_MSB = common dso_local global i32 0, align 4
@TG3_EAV_REF_CLCK_CTL_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32)* @tg3_refclk_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_refclk_write(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @TG3_EAV_REF_CLCK_CTL, align 4
  %7 = call i32 @tr32(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @TG3_EAV_REF_CLCK_CTL, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TG3_EAV_REF_CLCK_CTL_STOP, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @tw32(i32 %8, i32 %11)
  %13 = load i32, i32* @TG3_EAV_REF_CLCK_LSB, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @tw32(i32 %13, i32 %14)
  %16 = load i32, i32* @TG3_EAV_REF_CLCK_MSB, align 4
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 32
  %19 = call i32 @tw32(i32 %16, i32 %18)
  %20 = load i32, i32* @TG3_EAV_REF_CLCK_CTL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @TG3_EAV_REF_CLCK_CTL_RESUME, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @tw32_f(i32 %20, i32 %23)
  ret void
}

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tw32(i32, i32) #1

declare dso_local i32 @tw32_f(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
