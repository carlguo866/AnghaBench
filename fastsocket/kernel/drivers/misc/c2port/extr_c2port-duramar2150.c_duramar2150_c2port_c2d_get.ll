; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/c2port/extr_c2port-duramar2150.c_duramar2150_c2port_c2d_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/c2port/extr_c2port-duramar2150.c_duramar2150_c2port_c2d_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c2port_device = type { i32 }

@DATA_PORT = common dso_local global i32 0, align 4
@C2D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c2port_device*)* @duramar2150_c2port_c2d_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @duramar2150_c2port_c2d_get(%struct.c2port_device* %0) #0 {
  %2 = alloca %struct.c2port_device*, align 8
  store %struct.c2port_device* %0, %struct.c2port_device** %2, align 8
  %3 = load i32, i32* @DATA_PORT, align 4
  %4 = call i32 @inb(i32 %3)
  %5 = load i32, i32* @C2D, align 4
  %6 = and i32 %4, %5
  ret i32 %6
}

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
