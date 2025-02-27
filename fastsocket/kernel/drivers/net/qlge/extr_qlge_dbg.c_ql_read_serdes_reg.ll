; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_read_serdes_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_dbg.c_ql_read_serdes_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@XG_SERDES_ADDR = common dso_local global i32 0, align 4
@XG_SERDES_ADDR_RDY = common dso_local global i32 0, align 4
@PROC_ADDR_R = common dso_local global i32 0, align 4
@XG_SERDES_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32, i32*)* @ql_read_serdes_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_read_serdes_reg(%struct.ql_adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %9 = load i32, i32* @XG_SERDES_ADDR, align 4
  %10 = load i32, i32* @XG_SERDES_ADDR_RDY, align 4
  %11 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %8, i32 %9, i32 %10, i32 0)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %34

15:                                               ; preds = %3
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %17 = load i32, i32* @XG_SERDES_ADDR, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PROC_ADDR_R, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @ql_write32(%struct.ql_adapter* %16, i32 %17, i32 %20)
  %22 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %23 = load i32, i32* @XG_SERDES_ADDR, align 4
  %24 = load i32, i32* @XG_SERDES_ADDR_RDY, align 4
  %25 = call i32 @ql_wait_reg_rdy(%struct.ql_adapter* %22, i32 %23, i32 %24, i32 0)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  br label %34

29:                                               ; preds = %15
  %30 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %31 = load i32, i32* @XG_SERDES_DATA, align 4
  %32 = call i32 @ql_read32(%struct.ql_adapter* %30, i32 %31)
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %28, %14
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @ql_wait_reg_rdy(%struct.ql_adapter*, i32, i32, i32) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
