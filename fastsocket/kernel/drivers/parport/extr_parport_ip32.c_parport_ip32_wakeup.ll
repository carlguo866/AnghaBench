; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ip32.c_parport_ip32_wakeup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ip32.c_parport_ip32_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.parport_ip32_private* }
%struct.parport_ip32_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @parport_ip32_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_ip32_wakeup(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.parport_ip32_private*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  %4 = load %struct.parport*, %struct.parport** %2, align 8
  %5 = getelementptr inbounds %struct.parport, %struct.parport* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %7, align 8
  store %struct.parport_ip32_private* %8, %struct.parport_ip32_private** %3, align 8
  %9 = load %struct.parport_ip32_private*, %struct.parport_ip32_private** %3, align 8
  %10 = getelementptr inbounds %struct.parport_ip32_private, %struct.parport_ip32_private* %9, i32 0, i32 0
  %11 = call i32 @complete(i32* %10)
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
