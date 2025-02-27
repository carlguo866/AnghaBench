; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_begin_reconnect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_begin_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coreaudio_data = type { i32, i64 }

@reconnect_thread = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"[coreaudio_begin_reconnect] failed to create thread, error code: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coreaudio_data*)* @coreaudio_begin_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coreaudio_begin_reconnect(%struct.coreaudio_data* %0) #0 {
  %2 = alloca %struct.coreaudio_data*, align 8
  %3 = alloca i32, align 4
  store %struct.coreaudio_data* %0, %struct.coreaudio_data** %2, align 8
  %4 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %5 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %11 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %10, i32 0, i32 0
  %12 = load i32, i32* @reconnect_thread, align 4
  %13 = load %struct.coreaudio_data*, %struct.coreaudio_data** %2, align 8
  %14 = call i32 @pthread_create(i32* %11, i32* null, i32 %12, %struct.coreaudio_data* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %9
  %18 = load i32, i32* @LOG_WARNING, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @blog(i32 %18, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %8, %17, %9
  ret void
}

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.coreaudio_data*) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
