; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt819.c_bt819_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_bt819.c_bt819_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt819 = type { i64*, i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt819*, i64, i64)* @bt819_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt819_write(%struct.bt819* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bt819*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i2c_client*, align 8
  store %struct.bt819* %0, %struct.bt819** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.bt819*, %struct.bt819** %4, align 8
  %9 = getelementptr inbounds %struct.bt819, %struct.bt819* %8, i32 0, i32 1
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.bt819*, %struct.bt819** %4, align 8
  %13 = getelementptr inbounds %struct.bt819, %struct.bt819* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 %11, i64* %16, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %17, i64 %18, i64 %19)
  ret i32 %20
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
