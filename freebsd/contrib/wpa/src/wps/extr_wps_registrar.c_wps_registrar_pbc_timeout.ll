; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_pbc_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_registrar.c_wps_registrar_pbc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"WPS: PBC timed out - disable PBC mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @wps_registrar_pbc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_registrar_pbc_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wps_registrar*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.wps_registrar*
  store %struct.wps_registrar* %7, %struct.wps_registrar** %5, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.wps_registrar*, %struct.wps_registrar** %5, align 8
  %11 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @wps_pbc_timeout_event(i32 %12)
  %14 = load %struct.wps_registrar*, %struct.wps_registrar** %5, align 8
  %15 = call i32 @wps_registrar_stop_pbc(%struct.wps_registrar* %14)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wps_pbc_timeout_event(i32) #1

declare dso_local i32 @wps_registrar_stop_pbc(%struct.wps_registrar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
