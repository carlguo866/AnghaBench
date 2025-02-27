; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_io.c_oxygen_write_i2c.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/oxygen/extr_oxygen_io.c_oxygen_write_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { i32 }

@OXYGEN_2WIRE_MAP = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_DATA = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_CONTROL = common dso_local global i32 0, align 4
@OXYGEN_2WIRE_DIR_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oxygen_write_i2c(%struct.oxygen* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = call i32 @msleep(i32 1)
  %10 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %11 = load i32, i32* @OXYGEN_2WIRE_MAP, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @oxygen_write8(%struct.oxygen* %10, i32 %11, i32 %12)
  %14 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %15 = load i32, i32* @OXYGEN_2WIRE_DATA, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @oxygen_write8(%struct.oxygen* %14, i32 %15, i32 %16)
  %18 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %19 = load i32, i32* @OXYGEN_2WIRE_CONTROL, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @OXYGEN_2WIRE_DIR_WRITE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @oxygen_write8(%struct.oxygen* %18, i32 %19, i32 %22)
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @oxygen_write8(%struct.oxygen*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
