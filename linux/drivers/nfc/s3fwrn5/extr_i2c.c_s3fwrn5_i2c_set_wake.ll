; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_i2c.c_s3fwrn5_i2c_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_i2c.c_s3fwrn5_i2c_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3fwrn5_i2c_phy = type { i32, i32 }

@S3FWRN5_EN_WAIT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @s3fwrn5_i2c_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3fwrn5_i2c_set_wake(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3fwrn5_i2c_phy*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.s3fwrn5_i2c_phy*
  store %struct.s3fwrn5_i2c_phy* %7, %struct.s3fwrn5_i2c_phy** %5, align 8
  %8 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %5, align 8
  %9 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %5, align 8
  %12 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @gpio_set_value(i32 %13, i32 %14)
  %16 = load i32, i32* @S3FWRN5_EN_WAIT_TIME, align 4
  %17 = sdiv i32 %16, 2
  %18 = call i32 @msleep(i32 %17)
  %19 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %5, align 8
  %20 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
