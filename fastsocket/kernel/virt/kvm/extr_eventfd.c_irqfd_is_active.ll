; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_eventfd.c_irqfd_is_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_eventfd.c_irqfd_is_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._irqfd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._irqfd*)* @irqfd_is_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irqfd_is_active(%struct._irqfd* %0) #0 {
  %2 = alloca %struct._irqfd*, align 8
  store %struct._irqfd* %0, %struct._irqfd** %2, align 8
  %3 = load %struct._irqfd*, %struct._irqfd** %2, align 8
  %4 = getelementptr inbounds %struct._irqfd, %struct._irqfd* %3, i32 0, i32 0
  %5 = call i64 @list_empty(i32* %4)
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32 0, i32 1
  ret i32 %8
}

declare dso_local i64 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
