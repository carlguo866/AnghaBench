; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_f71805f_write16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_f71805f_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f71805f_data = type { i64 }

@ADDR_REG_OFFSET = common dso_local global i64 0, align 8
@DATA_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f71805f_data*, i32, i32)* @f71805f_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f71805f_write16(%struct.f71805f_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.f71805f_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.f71805f_data* %0, %struct.f71805f_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.f71805f_data*, %struct.f71805f_data** %4, align 8
  %9 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outb(i32 %7, i64 %12)
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 8
  %16 = load %struct.f71805f_data*, %struct.f71805f_data** %4, align 8
  %17 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DATA_REG_OFFSET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb(i32 %15, i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load %struct.f71805f_data*, %struct.f71805f_data** %4, align 8
  %25 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 %23, i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 255
  %32 = load %struct.f71805f_data*, %struct.f71805f_data** %4, align 8
  %33 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DATA_REG_OFFSET, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outb(i32 %31, i64 %36)
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
