; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at91_priv*, i32)* @at91_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_read(%struct.at91_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.at91_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.at91_priv* %0, %struct.at91_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %6 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add i32 %7, %8
  %10 = call i32 @readl(i32 %9)
  ret i32 %10
}

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
