; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_get_quat.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_get_quat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quat = type { float, float, float, float }

@.str = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.quat*)* @get_quat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_quat(i32* %0, %struct.quat* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.quat*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.quat* %1, %struct.quat** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %31

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @obs_data_get_double(i32* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = sitofp i64 %10 to float
  %12 = load %struct.quat*, %struct.quat** %4, align 8
  %13 = getelementptr inbounds %struct.quat, %struct.quat* %12, i32 0, i32 0
  store float %11, float* %13, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @obs_data_get_double(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %16 = sitofp i64 %15 to float
  %17 = load %struct.quat*, %struct.quat** %4, align 8
  %18 = getelementptr inbounds %struct.quat, %struct.quat* %17, i32 0, i32 1
  store float %16, float* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @obs_data_get_double(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %21 = sitofp i64 %20 to float
  %22 = load %struct.quat*, %struct.quat** %4, align 8
  %23 = getelementptr inbounds %struct.quat, %struct.quat* %22, i32 0, i32 2
  store float %21, float* %23, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @obs_data_get_double(i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %26 = sitofp i64 %25 to float
  %27 = load %struct.quat*, %struct.quat** %4, align 8
  %28 = getelementptr inbounds %struct.quat, %struct.quat* %27, i32 0, i32 3
  store float %26, float* %28, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @obs_data_release(i32* %29)
  br label %31

31:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @obs_data_get_double(i32*, i8*) #1

declare dso_local i32 @obs_data_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
