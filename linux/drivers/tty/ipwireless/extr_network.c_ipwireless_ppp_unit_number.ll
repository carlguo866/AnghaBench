; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_network.c_ipwireless_ppp_unit_number.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_network.c_ipwireless_ppp_unit_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_network = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipwireless_ppp_unit_number(%struct.ipw_network* %0) #0 {
  %2 = alloca %struct.ipw_network*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.ipw_network* %0, %struct.ipw_network** %2, align 8
  store i32 -1, i32* %3, align 4
  %5 = load %struct.ipw_network*, %struct.ipw_network** %2, align 8
  %6 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %5, i32 0, i32 0
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.ipw_network*, %struct.ipw_network** %2, align 8
  %10 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.ipw_network*, %struct.ipw_network** %2, align 8
  %15 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @ppp_unit_number(i32* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.ipw_network*, %struct.ipw_network** %2, align 8
  %20 = getelementptr inbounds %struct.ipw_network, %struct.ipw_network* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ppp_unit_number(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
