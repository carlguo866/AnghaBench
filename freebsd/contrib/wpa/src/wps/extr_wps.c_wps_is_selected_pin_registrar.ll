; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_is_selected_pin_registrar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps.c_wps_is_selected_pin_registrar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_is_selected_pin_registrar(%struct.wpabuf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.wps_parse_attr, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  %5 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %6 = call i64 @wps_parse_msg(%struct.wpabuf* %5, %struct.wps_parse_attr* %4)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

9:                                                ; preds = %1
  %10 = call i32 @is_selected_pin_registrar(%struct.wps_parse_attr* %4)
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %9, %8
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i32 @is_selected_pin_registrar(%struct.wps_parse_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
