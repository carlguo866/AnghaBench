; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-internal.h_obs_source_dosignal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-internal.h_obs_source_dosignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.obs_source = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.calldata = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"source\00", align 1
@obs = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_source*, i8*, i8*)* @obs_source_dosignal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_source_dosignal(%struct.obs_source* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.obs_source*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.calldata, align 4
  %8 = alloca [128 x i32], align 16
  store %struct.obs_source* %0, %struct.obs_source** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %10 = call i32 @calldata_init_fixed(%struct.calldata* %7, i32* %9, i32 512)
  %11 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %12 = call i32 @calldata_set_ptr(%struct.calldata* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.obs_source* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %17 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @obs, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @signal_handler_signal(i32 %24, i8* %25, %struct.calldata* %7)
  br label %27

27:                                               ; preds = %21, %15, %3
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.obs_source*, %struct.obs_source** %4, align 8
  %32 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @signal_handler_signal(i32 %34, i8* %35, %struct.calldata* %7)
  br label %37

37:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @calldata_init_fixed(%struct.calldata*, i32*, i32) #1

declare dso_local i32 @calldata_set_ptr(%struct.calldata*, i8*, %struct.obs_source*) #1

declare dso_local i32 @signal_handler_signal(i32, i8*, %struct.calldata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
