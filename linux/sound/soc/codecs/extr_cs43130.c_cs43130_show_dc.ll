; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_show_dc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_show_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.i2c_client = type { i32 }
%struct.cs43130_private = type { i32*, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"NO_HPLOAD\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i64)* @cs43130_show_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_show_dc(%struct.device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.cs43130_private*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.i2c_client* @to_i2c_client(%struct.device* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %8, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %13 = call %struct.cs43130_private* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.cs43130_private* %13, %struct.cs43130_private** %9, align 8
  %14 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %15 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %19, i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %4, align 4
  br label %32

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load %struct.cs43130_private*, %struct.cs43130_private** %9, align 8
  %26 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i32, i8*, ...) @scnprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %22, %18
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.cs43130_private* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
