; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_sub_rem_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_hs20_sub_rem_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hs20_osu_client = type { i32, i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Updating wpa_supplicant credentials\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Requesting reconnection with updated configuration\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"INTERWORKING_SELECT auto\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to request wpa_supplicant to reconnect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hs20_osu_client*, i8*)* @hs20_sub_rem_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hs20_sub_rem_complete(%struct.hs20_osu_client* %0, i8* %1) #0 {
  %3 = alloca %struct.hs20_osu_client*, align 8
  %4 = alloca i8*, align 8
  store %struct.hs20_osu_client* %0, %struct.hs20_osu_client** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @MSG_INFO, align 4
  %6 = call i32 @wpa_printf(i32 %5, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @cmd_set_pps(%struct.hs20_osu_client* %7, i8* %8)
  %10 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %11 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %26

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.hs20_osu_client*, %struct.hs20_osu_client** %3, align 8
  %19 = getelementptr inbounds %struct.hs20_osu_client, %struct.hs20_osu_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @wpa_command(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @MSG_ERROR, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %14, %23, %15
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @cmd_set_pps(%struct.hs20_osu_client*, i8*) #1

declare dso_local i64 @wpa_command(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
