; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds2782_get_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds2782_get_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds278x_info = type { i32 }

@DS278x_REG_VOLT_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds278x_info*, i32*)* @ds2782_get_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds2782_get_voltage(%struct.ds278x_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds278x_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ds278x_info* %0, %struct.ds278x_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.ds278x_info*, %struct.ds278x_info** %4, align 8
  %9 = load i32, i32* @DS278x_REG_VOLT_MSB, align 4
  %10 = call i32 @ds278x_read_reg16(%struct.ds278x_info* %8, i32 %9, i32* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = sdiv i32 %16, 32
  %18 = mul nsw i32 %17, 4800
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %13
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @ds278x_read_reg16(%struct.ds278x_info*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
