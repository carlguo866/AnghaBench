; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_soc_pcmcia_enable_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_soc_common.c_soc_pcmcia_enable_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { i64 }
%struct.pcmcia_irqs = type { i64, i32 }

@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @soc_pcmcia_enable_irqs(%struct.soc_pcmcia_socket* %0, %struct.pcmcia_irqs* %1, i32 %2) #0 {
  %4 = alloca %struct.soc_pcmcia_socket*, align 8
  %5 = alloca %struct.pcmcia_irqs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %4, align 8
  store %struct.pcmcia_irqs* %1, %struct.pcmcia_irqs** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %41, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = load %struct.pcmcia_irqs*, %struct.pcmcia_irqs** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pcmcia_irqs, %struct.pcmcia_irqs* %13, i64 %15
  %17 = getelementptr inbounds %struct.pcmcia_irqs, %struct.pcmcia_irqs* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %4, align 8
  %20 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %12
  %24 = load %struct.pcmcia_irqs*, %struct.pcmcia_irqs** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pcmcia_irqs, %struct.pcmcia_irqs* %24, i64 %26
  %28 = getelementptr inbounds %struct.pcmcia_irqs, %struct.pcmcia_irqs* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %31 = call i32 @set_irq_type(i32 %29, i32 %30)
  %32 = load %struct.pcmcia_irqs*, %struct.pcmcia_irqs** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pcmcia_irqs, %struct.pcmcia_irqs* %32, i64 %34
  %36 = getelementptr inbounds %struct.pcmcia_irqs, %struct.pcmcia_irqs* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %39 = call i32 @set_irq_type(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %23, %12
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %8

44:                                               ; preds = %8
  ret void
}

declare dso_local i32 @set_irq_type(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
