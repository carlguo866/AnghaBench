; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_reset_cmn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_func_reset_cmn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_func_sp_drv_ops = type { i32 (%struct.bnx2x.0*)* }
%struct.bnx2x.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_func_sp_drv_ops*)* @bnx2x_func_reset_cmn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_func_reset_cmn(%struct.bnx2x* %0, %struct.bnx2x_func_sp_drv_ops* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_func_sp_drv_ops*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_func_sp_drv_ops* %1, %struct.bnx2x_func_sp_drv_ops** %4, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %6 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %4, align 8
  %7 = call i32 @bnx2x_func_reset_port(%struct.bnx2x* %5, %struct.bnx2x_func_sp_drv_ops* %6)
  %8 = load %struct.bnx2x_func_sp_drv_ops*, %struct.bnx2x_func_sp_drv_ops** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2x_func_sp_drv_ops, %struct.bnx2x_func_sp_drv_ops* %8, i32 0, i32 0
  %10 = load i32 (%struct.bnx2x.0*)*, i32 (%struct.bnx2x.0*)** %9, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = bitcast %struct.bnx2x* %11 to %struct.bnx2x.0*
  %13 = call i32 %10(%struct.bnx2x.0* %12)
  ret void
}

declare dso_local i32 @bnx2x_func_reset_port(%struct.bnx2x*, %struct.bnx2x_func_sp_drv_ops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
