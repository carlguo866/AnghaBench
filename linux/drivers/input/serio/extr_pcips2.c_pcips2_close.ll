; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_pcips2.c_pcips2_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_pcips2.c_pcips2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.pcips2_data* }
%struct.pcips2_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @pcips2_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcips2_close(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.pcips2_data*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = getelementptr inbounds %struct.serio, %struct.serio* %4, i32 0, i32 0
  %6 = load %struct.pcips2_data*, %struct.pcips2_data** %5, align 8
  store %struct.pcips2_data* %6, %struct.pcips2_data** %3, align 8
  %7 = load %struct.pcips2_data*, %struct.pcips2_data** %3, align 8
  %8 = getelementptr inbounds %struct.pcips2_data, %struct.pcips2_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @outb(i32 0, i32 %9)
  %11 = load %struct.pcips2_data*, %struct.pcips2_data** %3, align 8
  %12 = getelementptr inbounds %struct.pcips2_data, %struct.pcips2_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pcips2_data*, %struct.pcips2_data** %3, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.pcips2_data* %16)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.pcips2_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
