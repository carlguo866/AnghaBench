; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_remove_debug_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_at91_udc.c_remove_debug_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_udc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at91_udc*)* @remove_debug_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_debug_file(%struct.at91_udc* %0) #0 {
  %2 = alloca %struct.at91_udc*, align 8
  store %struct.at91_udc* %0, %struct.at91_udc** %2, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
