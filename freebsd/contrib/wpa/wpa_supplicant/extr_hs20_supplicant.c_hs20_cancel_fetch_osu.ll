; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_hs20_cancel_fetch_osu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_hs20_supplicant.c_hs20_cancel_fetch_osu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Cancel OSU fetch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hs20_cancel_fetch_osu(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %3 = load i32, i32* @MSG_DEBUG, align 4
  %4 = call i32 @wpa_printf(i32 %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %6 = call i32 @interworking_stop_fetch_anqp(%struct.wpa_supplicant* %5)
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @interworking_stop_fetch_anqp(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
