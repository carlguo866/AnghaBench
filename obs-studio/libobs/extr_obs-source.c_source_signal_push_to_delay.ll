; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_source_signal_push_to_delay.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_source_signal_push_to_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.calldata = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i32)* @source_signal_push_to_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @source_signal_push_to_delay(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.calldata, align 4
  %8 = alloca [128 x i32], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %10 = call i32 @calldata_init_fixed(%struct.calldata* %7, i32* %9, i32 512)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = call i32 @calldata_set_ptr(%struct.calldata* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %11)
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @calldata_set_bool(%struct.calldata* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @signal_handler_signal(i32 %18, i8* %19, %struct.calldata* %7)
  ret void
}

declare dso_local i32 @calldata_init_fixed(%struct.calldata*, i32*, i32) #1

declare dso_local i32 @calldata_set_ptr(%struct.calldata*, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @calldata_set_bool(%struct.calldata*, i8*, i32) #1

declare dso_local i32 @signal_handler_signal(i32, i8*, %struct.calldata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
