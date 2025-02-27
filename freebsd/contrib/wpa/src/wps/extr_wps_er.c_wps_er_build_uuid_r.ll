; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_build_uuid_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_build_uuid_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@ATTR_UUID_R = common dso_local global i32 0, align 4
@WPS_UUID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf*, i32*)* @wps_er_build_uuid_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_er_build_uuid_r(%struct.wpabuf* %0, i32* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %6 = load i32, i32* @ATTR_UUID_R, align 4
  %7 = call i32 @wpabuf_put_be16(%struct.wpabuf* %5, i32 %6)
  %8 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %9 = load i32, i32* @WPS_UUID_LEN, align 4
  %10 = call i32 @wpabuf_put_be16(%struct.wpabuf* %8, i32 %9)
  %11 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @WPS_UUID_LEN, align 4
  %14 = call i32 @wpabuf_put_data(%struct.wpabuf* %11, i32* %12, i32 %13)
  ret i32 0
}

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
