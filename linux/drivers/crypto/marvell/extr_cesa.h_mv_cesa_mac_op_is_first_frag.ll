; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.h_mv_cesa_mac_op_is_first_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.h_mv_cesa_mac_op_is_first_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_op_ctx = type { i32 }

@CESA_SA_DESC_CFG_FRAG_MSK = common dso_local global i32 0, align 4
@CESA_SA_DESC_CFG_FIRST_FRAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_cesa_op_ctx*)* @mv_cesa_mac_op_is_first_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_mac_op_is_first_frag(%struct.mv_cesa_op_ctx* %0) #0 {
  %2 = alloca %struct.mv_cesa_op_ctx*, align 8
  store %struct.mv_cesa_op_ctx* %0, %struct.mv_cesa_op_ctx** %2, align 8
  %3 = load %struct.mv_cesa_op_ctx*, %struct.mv_cesa_op_ctx** %2, align 8
  %4 = call i32 @mv_cesa_get_op_cfg(%struct.mv_cesa_op_ctx* %3)
  %5 = load i32, i32* @CESA_SA_DESC_CFG_FRAG_MSK, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @CESA_SA_DESC_CFG_FIRST_FRAG, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  ret i32 %9
}

declare dso_local i32 @mv_cesa_get_op_cfg(%struct.mv_cesa_op_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
