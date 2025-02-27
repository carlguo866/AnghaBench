; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_ene_ir.c_ene_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.ene_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*)* @ene_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ene_shutdown(%struct.pnp_dev* %0) #0 {
  %2 = alloca %struct.pnp_dev*, align 8
  %3 = alloca %struct.ene_device*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %2, align 8
  %4 = load %struct.pnp_dev*, %struct.pnp_dev** %2, align 8
  %5 = call %struct.ene_device* @pnp_get_drvdata(%struct.pnp_dev* %4)
  store %struct.ene_device* %5, %struct.ene_device** %3, align 8
  %6 = load %struct.ene_device*, %struct.ene_device** %3, align 8
  %7 = call i32 @ene_enable_wake(%struct.ene_device* %6, i32 1)
  ret void
}

declare dso_local %struct.ene_device* @pnp_get_drvdata(%struct.pnp_dev*) #1

declare dso_local i32 @ene_enable_wake(%struct.ene_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
