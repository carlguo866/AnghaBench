; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_..pinconf.h_pinconf_init_device_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_..pinconf.h_pinconf_init_device_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.pinctrl_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.pinctrl_dev*)* @pinconf_init_device_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pinconf_init_device_debugfs(%struct.dentry* %0, %struct.pinctrl_dev* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.pinctrl_dev*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.pinctrl_dev* %1, %struct.pinctrl_dev** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
