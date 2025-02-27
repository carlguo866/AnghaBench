; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/arch/mips/adm5120/compex/extr_compex.c_switch_bank_gpio5.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/arch/mips/adm5120/compex/extr_compex.c_switch_bank_gpio5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADM5120_GPIO_PIN5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @switch_bank_gpio5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switch_bank_gpio5(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %10 [
    i32 0, label %4
    i32 1, label %7
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @ADM5120_GPIO_PIN5, align 4
  %6 = call i32 @gpio_set_value(i32 %5, i32 0)
  br label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @ADM5120_GPIO_PIN5, align 4
  %9 = call i32 @gpio_set_value(i32 %8, i32 1)
  br label %10

10:                                               ; preds = %1, %7, %4
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
