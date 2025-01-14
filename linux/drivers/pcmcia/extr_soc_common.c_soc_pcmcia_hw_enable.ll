; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_soc_common.c_soc_pcmcia_hw_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_soc_common.c_soc_pcmcia_hw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_pcmcia_socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soc_pcmcia_socket*)* @soc_pcmcia_hw_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soc_pcmcia_hw_enable(%struct.soc_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.soc_pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  store %struct.soc_pcmcia_socket* %0, %struct.soc_pcmcia_socket** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %43, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %7 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.TYPE_2__* %8)
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %4
  %12 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %13 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %11
  %22 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %23 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %31 = call i32 @irq_set_irq_type(i64 %29, i32 %30)
  %32 = load %struct.soc_pcmcia_socket*, %struct.soc_pcmcia_socket** %2, align 8
  %33 = getelementptr inbounds %struct.soc_pcmcia_socket, %struct.soc_pcmcia_socket* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %41 = call i32 @irq_set_irq_type(i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %21, %11
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %4

46:                                               ; preds = %4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_2__*) #1

declare dso_local i32 @irq_set_irq_type(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
