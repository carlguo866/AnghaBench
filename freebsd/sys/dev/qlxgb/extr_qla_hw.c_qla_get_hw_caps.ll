; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_hw.c_qla_get_hw_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_hw.c_qla_get_hw_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla_get_hw_caps(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @qla_get_max_rds(i32* %3)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @qla_get_max_sds(i32* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @qla_get_max_rules(i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @qla_get_max_rcv_cntxts(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @qla_get_max_tx_cntxts(i32* %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @qla_get_max_mtu(i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @qla_get_max_lro(i32* %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @qla_get_flow_control(i32* %17)
  ret void
}

declare dso_local i32 @qla_get_max_rds(i32*) #1

declare dso_local i32 @qla_get_max_sds(i32*) #1

declare dso_local i32 @qla_get_max_rules(i32*) #1

declare dso_local i32 @qla_get_max_rcv_cntxts(i32*) #1

declare dso_local i32 @qla_get_max_tx_cntxts(i32*) #1

declare dso_local i32 @qla_get_max_mtu(i32*) #1

declare dso_local i32 @qla_get_max_lro(i32*) #1

declare dso_local i32 @qla_get_flow_control(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
