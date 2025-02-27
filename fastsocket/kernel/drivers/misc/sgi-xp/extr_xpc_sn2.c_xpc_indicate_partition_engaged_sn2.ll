; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_indicate_partition_engaged_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_indicate_partition_engaged_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.amo = type { i32 }

@XPC_ENGAGED_PARTITIONS_AMO_SN2 = common dso_local global i32 0, align 4
@FETCHOP_OR = common dso_local global i32 0, align 4
@sn_partition_id = common dso_local global i32 0, align 4
@xp_nofault_PIOR_target = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xpc_partition*)* @xpc_indicate_partition_engaged_sn2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_indicate_partition_engaged_sn2(%struct.xpc_partition* %0) #0 {
  %2 = alloca %struct.xpc_partition*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.amo*, align 8
  store %struct.xpc_partition* %0, %struct.xpc_partition** %2, align 8
  %5 = load %struct.xpc_partition*, %struct.xpc_partition** %2, align 8
  %6 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* @XPC_ENGAGED_PARTITIONS_AMO_SN2, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = add i64 %9, %12
  %14 = call i64 @__va(i64 %13)
  %15 = inttoptr i64 %14 to %struct.amo*
  store %struct.amo* %15, %struct.amo** %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @local_irq_save(i64 %16)
  %18 = load %struct.amo*, %struct.amo** %4, align 8
  %19 = getelementptr inbounds %struct.amo, %struct.amo* %18, i32 0, i32 0
  %20 = ptrtoint i32* %19 to i32
  %21 = call i32 @TO_AMO(i32 %20)
  %22 = load i32, i32* @FETCHOP_OR, align 4
  %23 = load i32, i32* @sn_partition_id, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = call i32 @FETCHOP_STORE_OP(i32 %21, i32 %22, i32 %24)
  %26 = load %struct.amo*, %struct.amo** %4, align 8
  %27 = getelementptr inbounds %struct.amo, %struct.amo* %26, i32 0, i32 0
  %28 = call i32 @NASID_GET(i32* %27)
  %29 = load i32, i32* @xp_nofault_PIOR_target, align 4
  %30 = call i64 @GLOBAL_MMR_ADDR(i32 %28, i32 %29)
  %31 = inttoptr i64 %30 to i32*
  %32 = call i32 @xp_nofault_PIOR(i32* %31)
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @local_irq_restore(i64 %33)
  ret void
}

declare dso_local i64 @__va(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @FETCHOP_STORE_OP(i32, i32, i32) #1

declare dso_local i32 @TO_AMO(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @xp_nofault_PIOR(i32*) #1

declare dso_local i64 @GLOBAL_MMR_ADDR(i32, i32) #1

declare dso_local i32 @NASID_GET(i32*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
