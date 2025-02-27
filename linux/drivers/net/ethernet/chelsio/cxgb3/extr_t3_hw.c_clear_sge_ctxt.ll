; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_clear_sge_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_t3_hw.c_clear_sge_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@A_SG_CONTEXT_DATA0 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA1 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA2 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA3 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_MASK0 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_MASK1 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_MASK2 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_MASK3 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_CMD = common dso_local global i32 0, align 4
@F_CONTEXT_CMD_BUSY = common dso_local global i32 0, align 4
@SG_CONTEXT_CMD_ATTEMPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32)* @clear_sge_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_sge_ctxt(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.adapter*, %struct.adapter** %4, align 8
  %8 = load i32, i32* @A_SG_CONTEXT_DATA0, align 4
  %9 = call i32 @t3_write_reg(%struct.adapter* %7, i32 %8, i32 0)
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = load i32, i32* @A_SG_CONTEXT_DATA1, align 4
  %12 = call i32 @t3_write_reg(%struct.adapter* %10, i32 %11, i32 0)
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = load i32, i32* @A_SG_CONTEXT_DATA2, align 4
  %15 = call i32 @t3_write_reg(%struct.adapter* %13, i32 %14, i32 0)
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = load i32, i32* @A_SG_CONTEXT_DATA3, align 4
  %18 = call i32 @t3_write_reg(%struct.adapter* %16, i32 %17, i32 0)
  %19 = load %struct.adapter*, %struct.adapter** %4, align 8
  %20 = load i32, i32* @A_SG_CONTEXT_MASK0, align 4
  %21 = call i32 @t3_write_reg(%struct.adapter* %19, i32 %20, i32 -1)
  %22 = load %struct.adapter*, %struct.adapter** %4, align 8
  %23 = load i32, i32* @A_SG_CONTEXT_MASK1, align 4
  %24 = call i32 @t3_write_reg(%struct.adapter* %22, i32 %23, i32 -1)
  %25 = load %struct.adapter*, %struct.adapter** %4, align 8
  %26 = load i32, i32* @A_SG_CONTEXT_MASK2, align 4
  %27 = call i32 @t3_write_reg(%struct.adapter* %25, i32 %26, i32 -1)
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = load i32, i32* @A_SG_CONTEXT_MASK3, align 4
  %30 = call i32 @t3_write_reg(%struct.adapter* %28, i32 %29, i32 -1)
  %31 = load %struct.adapter*, %struct.adapter** %4, align 8
  %32 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %33 = call i32 @V_CONTEXT_CMD_OPCODE(i32 1)
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @V_CONTEXT(i32 %36)
  %38 = or i32 %35, %37
  %39 = call i32 @t3_write_reg(%struct.adapter* %31, i32 %32, i32 %38)
  %40 = load %struct.adapter*, %struct.adapter** %4, align 8
  %41 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %42 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %43 = load i32, i32* @SG_CONTEXT_CMD_ATTEMPTS, align 4
  %44 = call i32 @t3_wait_op_done(%struct.adapter* %40, i32 %41, i32 %42, i32 0, i32 %43, i32 1)
  ret i32 %44
}

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @V_CONTEXT_CMD_OPCODE(i32) #1

declare dso_local i32 @V_CONTEXT(i32) #1

declare dso_local i32 @t3_wait_op_done(%struct.adapter*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
