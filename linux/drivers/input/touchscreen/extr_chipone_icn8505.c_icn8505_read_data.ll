; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8505.c_icn8505_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_chipone_icn8505.c_icn8505_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icn8505_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ICN8505_REG_ADDR_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icn8505_data*, i32, i8*, i32)* @icn8505_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icn8505_read_data(%struct.icn8505_data* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.icn8505_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.icn8505_data* %0, %struct.icn8505_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.icn8505_data*, %struct.icn8505_data** %5, align 8
  %10 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load %struct.icn8505_data*, %struct.icn8505_data** %5, align 8
  %13 = getelementptr inbounds %struct.icn8505_data, %struct.icn8505_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ICN8505_REG_ADDR_WIDTH, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @icn8505_read_xfer(%struct.TYPE_2__* %11, i32 %16, i32 %17, i32 %18, i8* %19, i32 %20, i32 0)
  ret i32 %21
}

declare dso_local i32 @icn8505_read_xfer(%struct.TYPE_2__*, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
