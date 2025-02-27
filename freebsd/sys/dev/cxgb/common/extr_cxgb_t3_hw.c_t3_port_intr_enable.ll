; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_port_intr_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_port_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }
%struct.TYPE_4__ = type { i64 }

@A_XGM_INT_ENABLE = common dso_local global i64 0, align 8
@XGM_INTR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_port_intr_enable(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.port_info*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.port_info* @adap2pinfo(i32* %6, i32 %7)
  store %struct.port_info* %8, %struct.port_info** %5, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i64, i64* @A_XGM_INT_ENABLE, align 8
  %11 = load %struct.port_info*, %struct.port_info** %5, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %10, %14
  %16 = load i32, i32* @XGM_INTR_MASK, align 4
  %17 = call i32 @t3_write_reg(i32* %9, i64 %15, i32 %16)
  %18 = load %struct.port_info*, %struct.port_info** %5, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %22, align 8
  %24 = load %struct.port_info*, %struct.port_info** %5, align 8
  %25 = getelementptr inbounds %struct.port_info, %struct.port_info* %24, i32 0, i32 0
  %26 = call i32 %23(%struct.TYPE_6__* %25)
  ret void
}

declare dso_local %struct.port_info* @adap2pinfo(i32*, i32) #1

declare dso_local i32 @t3_write_reg(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
