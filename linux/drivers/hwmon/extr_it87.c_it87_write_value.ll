; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_it87_write_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_it87.c_it87_write_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.it87_data = type { i64 }

@IT87_ADDR_REG_OFFSET = common dso_local global i64 0, align 8
@IT87_DATA_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.it87_data*, i32, i32)* @it87_write_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it87_write_value(%struct.it87_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.it87_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.it87_data* %0, %struct.it87_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.it87_data*, %struct.it87_data** %4, align 8
  %9 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IT87_ADDR_REG_OFFSET, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outb_p(i32 %7, i64 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.it87_data*, %struct.it87_data** %4, align 8
  %16 = getelementptr inbounds %struct.it87_data, %struct.it87_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IT87_DATA_REG_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outb_p(i32 %14, i64 %19)
  ret void
}

declare dso_local i32 @outb_p(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
