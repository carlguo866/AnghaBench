; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_get_key_pinnacle_grey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-input.c_get_key_pinnacle_grey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i32*, i32*)* @get_key_pinnacle_grey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_pinnacle_grey(%struct.IR_i2c* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.IR_i2c*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.IR_i2c* %0, %struct.IR_i2c** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.IR_i2c*, %struct.IR_i2c** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @get_key_pinnacle(%struct.IR_i2c* %9, i32* %10, i32* %11, i32* %12, i32 1, i32 254, i32 255)
  ret i32 %13
}

declare dso_local i32 @get_key_pinnacle(%struct.IR_i2c*, i32*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
