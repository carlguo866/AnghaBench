; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_at91sam9_wdt.c_of_at91wdt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_at91sam9_wdt.c_of_at91wdt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.at91wdt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.at91wdt*)* @of_at91wdt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_at91wdt_init(%struct.device_node* %0, %struct.at91wdt* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.at91wdt*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.at91wdt* %1, %struct.at91wdt** %4, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
