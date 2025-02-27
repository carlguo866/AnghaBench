; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_find_last_packet_type_idx.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_find_last_packet_type_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_output = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.encoder_packet* }
%struct.encoder_packet = type { i32, i64 }

@OBS_ENCODER_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_output*, i32, i64)* @find_last_packet_type_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_last_packet_type_idx(%struct.obs_output* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.obs_output*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.encoder_packet*, align 8
  store %struct.obs_output* %0, %struct.obs_output** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %11 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  br label %14

14:                                               ; preds = %46, %3
  %15 = load i64, i64* %8, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load %struct.obs_output*, %struct.obs_output** %5, align 8
  %19 = getelementptr inbounds %struct.obs_output, %struct.obs_output* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load %struct.encoder_packet*, %struct.encoder_packet** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = sub i64 %22, 1
  %24 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %21, i64 %23
  store %struct.encoder_packet* %24, %struct.encoder_packet** %9, align 8
  %25 = load %struct.encoder_packet*, %struct.encoder_packet** %9, align 8
  %26 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %17
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @OBS_ENCODER_AUDIO, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.encoder_packet*, %struct.encoder_packet** %9, align 8
  %36 = getelementptr inbounds %struct.encoder_packet, %struct.encoder_packet* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %46

41:                                               ; preds = %34, %30
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 %42, 1
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %50

45:                                               ; preds = %17
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %8, align 8
  br label %14

49:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
