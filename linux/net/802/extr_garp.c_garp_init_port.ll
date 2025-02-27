; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_garp.c_garp_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.garp_port = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @garp_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @garp_init_port(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.garp_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.garp_port* @kzalloc(i32 4, i32 %5)
  store %struct.garp_port* %6, %struct.garp_port** %4, align 8
  %7 = load %struct.garp_port*, %struct.garp_port** %4, align 8
  %8 = icmp ne %struct.garp_port* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.garp_port*, %struct.garp_port** %4, align 8
  %17 = call i32 @rcu_assign_pointer(i32 %15, %struct.garp_port* %16)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %12, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.garp_port* @kzalloc(i32, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.garp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
