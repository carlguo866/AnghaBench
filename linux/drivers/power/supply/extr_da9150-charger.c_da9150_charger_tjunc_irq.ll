; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_tjunc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_tjunc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9150_charger = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"TJunc over temperature!!!\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @da9150_charger_tjunc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_charger_tjunc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.da9150_charger*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.da9150_charger*
  store %struct.da9150_charger* %7, %struct.da9150_charger** %5, align 8
  %8 = load %struct.da9150_charger*, %struct.da9150_charger** %5, align 8
  %9 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_crit(i32 %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.da9150_charger*, %struct.da9150_charger** %5, align 8
  %13 = getelementptr inbounds %struct.da9150_charger, %struct.da9150_charger* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @power_supply_changed(i32 %14)
  %16 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %16
}

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
