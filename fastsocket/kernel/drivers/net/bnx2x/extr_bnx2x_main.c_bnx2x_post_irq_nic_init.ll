; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_post_irq_nic_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_post_irq_nic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@MISC_REG_AEU_AFTER_INVERT_1_FUNC_0 = common dso_local global i64 0, align 8
@AEU_INPUTS_ATTN_BITS_SPIO5 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_post_irq_nic_init(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %6 = call i32 @bnx2x_init_eq_ring(%struct.bnx2x* %5)
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bnx2x_init_internal(%struct.bnx2x* %7, i32 %8)
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = call i32 @bnx2x_pf_init(%struct.bnx2x* %10)
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = call i32 @bnx2x_stats_init(%struct.bnx2x* %12)
  %14 = call i32 (...) @mb()
  %15 = call i32 (...) @mmiowb()
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = call i32 @bnx2x_int_enable(%struct.bnx2x* %16)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = load i64, i64* @MISC_REG_AEU_AFTER_INVERT_1_FUNC_0, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = call i32 @BP_PORT(%struct.bnx2x* %21)
  %23 = mul nsw i32 %22, 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %20, %24
  %26 = call i32 @REG_RD(%struct.bnx2x* %19, i64 %25)
  %27 = load i32, i32* @AEU_INPUTS_ATTN_BITS_SPIO5, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @bnx2x_attn_int_deasserted0(%struct.bnx2x* %18, i32 %28)
  ret void
}

declare dso_local i32 @bnx2x_init_eq_ring(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_init_internal(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_pf_init(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_stats_init(%struct.bnx2x*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @bnx2x_int_enable(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_attn_int_deasserted0(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
