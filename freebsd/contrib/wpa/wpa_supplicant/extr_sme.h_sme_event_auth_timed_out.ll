; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_sme.h_sme_event_auth_timed_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_sme.h_sme_event_auth_timed_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%union.wpa_event_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %union.wpa_event_data*)* @sme_event_auth_timed_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sme_event_auth_timed_out(%struct.wpa_supplicant* %0, %union.wpa_event_data* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %union.wpa_event_data*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %union.wpa_event_data* %1, %union.wpa_event_data** %4, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
