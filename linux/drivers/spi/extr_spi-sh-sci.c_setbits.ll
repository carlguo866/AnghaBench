; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-sci.c_setbits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-sci.c_setbits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_sci_spi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_sci_spi*, i32, i32)* @setbits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbits(%struct.sh_sci_spi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sh_sci_spi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sh_sci_spi* %0, %struct.sh_sci_spi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %4, align 8
  %12 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %22

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %4, align 8
  %19 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %15, %9
  %23 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %4, align 8
  %24 = getelementptr inbounds %struct.sh_sci_spi, %struct.sh_sci_spi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sh_sci_spi*, %struct.sh_sci_spi** %4, align 8
  %27 = call i32 @SCSPTR(%struct.sh_sci_spi* %26)
  %28 = call i32 @iowrite8(i32 %25, i32 %27)
  ret void
}

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @SCSPTR(%struct.sh_sci_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
