; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_notify_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap.c_eap_notify_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32 }

@DECISION_COND_SUCC = common dso_local global i32 0, align 4
@EAP_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_notify_success(%struct.eap_sm* %0) #0 {
  %2 = alloca %struct.eap_sm*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %2, align 8
  %3 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %4 = icmp ne %struct.eap_sm* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load i32, i32* @DECISION_COND_SUCC, align 4
  %7 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %8 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @EAP_SUCCESS, align 4
  %10 = load %struct.eap_sm*, %struct.eap_sm** %2, align 8
  %11 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  br label %12

12:                                               ; preds = %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
