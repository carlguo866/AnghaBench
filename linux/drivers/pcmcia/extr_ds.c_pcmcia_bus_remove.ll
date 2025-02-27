; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_bus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_ds.c_pcmcia_bus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @pcmcia_bus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmcia_bus_remove(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %4 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %3, i32 0, i32 1
  %5 = call i32 @atomic_set(i32* %4, i32 0)
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %7 = call i32 @pcmcia_card_remove(%struct.pcmcia_socket* %6, i32* null)
  %8 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %9 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %12 = call i32 @destroy_cis_cache(%struct.pcmcia_socket* %11)
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %14 = call i32 @pcmcia_cleanup_irq(%struct.pcmcia_socket* %13)
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %16 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  ret i32 0
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @pcmcia_card_remove(%struct.pcmcia_socket*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @destroy_cis_cache(%struct.pcmcia_socket*) #1

declare dso_local i32 @pcmcia_cleanup_irq(%struct.pcmcia_socket*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
