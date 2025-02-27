; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Error %d writing to subaddress 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32, i32)* @sil164_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sil164_write(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = call i32 @i2c_master_send(%struct.i2c_client* %13, i32* %14, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @sil164_err(%struct.i2c_client* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %3
  ret void
}

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sil164_err(%struct.i2c_client*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
