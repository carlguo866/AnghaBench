; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_get_direction.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wmm_ac.c_wmm_ac_get_direction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmm_tspec_element = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmm_tspec_element*)* @wmm_ac_get_direction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wmm_ac_get_direction(%struct.wmm_tspec_element* %0) #0 {
  %2 = alloca %struct.wmm_tspec_element*, align 8
  store %struct.wmm_tspec_element* %0, %struct.wmm_tspec_element** %2, align 8
  %3 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %2, align 8
  %4 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = ashr i32 %7, 5
  %9 = and i32 %8, 3
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
