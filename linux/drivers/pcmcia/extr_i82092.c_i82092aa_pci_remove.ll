; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_i82092.c_i82092aa_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_i82092.c_i82092aa_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"i82092aa_pci_remove\00", align 1
@i82092aa_interrupt = common dso_local global i32 0, align 4
@socket_count = common dso_local global i32 0, align 4
@sockets = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @i82092aa_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i82092aa_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = call i32 @enter(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @i82092aa_interrupt, align 4
  %9 = call i32 @free_irq(i32 %7, i32 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %21, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @socket_count, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sockets, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @pcmcia_unregister_socket(i32* %19)
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %10

24:                                               ; preds = %10
  %25 = call i32 @leave(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @enter(i8*) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @pcmcia_unregister_socket(i32*) #1

declare dso_local i32 @leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
