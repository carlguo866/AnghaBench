; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_non_pref_chan_subelem_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mbo.c_wpas_mbo_non_pref_chan_subelem_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@OUI_WFA = common dso_local global i32 0, align 4
@MBO_ATTR_ID_NON_PREF_CHAN_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpabuf*, i32)* @wpas_mbo_non_pref_chan_subelem_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_mbo_non_pref_chan_subelem_hdr(%struct.wpabuf* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %6 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %7 = call i32 @wpabuf_put_u8(%struct.wpabuf* %5, i32 %6)
  %8 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @wpabuf_put_u8(%struct.wpabuf* %8, i32 %9)
  %11 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %12 = load i32, i32* @OUI_WFA, align 4
  %13 = call i32 @wpabuf_put_be24(%struct.wpabuf* %11, i32 %12)
  %14 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %15 = load i32, i32* @MBO_ATTR_ID_NON_PREF_CHAN_REPORT, align 4
  %16 = call i32 @wpabuf_put_u8(%struct.wpabuf* %14, i32 %15)
  ret void
}

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be24(%struct.wpabuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
