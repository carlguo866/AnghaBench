; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_serial.c_serial_flush_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_serial.c_serial_flush_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial_flush_input(%struct.serial* %0) #0 {
  %2 = alloca %struct.serial*, align 8
  store %struct.serial* %0, %struct.serial** %2, align 8
  %3 = load %struct.serial*, %struct.serial** %2, align 8
  %4 = getelementptr inbounds %struct.serial, %struct.serial* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = bitcast {}** %6 to i32 (%struct.serial*)**
  %8 = load i32 (%struct.serial*)*, i32 (%struct.serial*)** %7, align 8
  %9 = load %struct.serial*, %struct.serial** %2, align 8
  %10 = call i32 %8(%struct.serial* %9)
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
