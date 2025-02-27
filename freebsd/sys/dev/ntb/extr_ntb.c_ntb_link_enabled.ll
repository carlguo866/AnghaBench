; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_link_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/extr_ntb.c_ntb_link_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_child = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntb_link_enabled(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_child*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ntb_child* @device_get_ivars(i32 %4)
  store %struct.ntb_child* %5, %struct.ntb_child** %3, align 8
  %6 = load %struct.ntb_child*, %struct.ntb_child** %3, align 8
  %7 = getelementptr inbounds %struct.ntb_child, %struct.ntb_child* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  %13 = call i64 @NTB_LINK_ENABLED(i32 %12)
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i1 [ false, %1 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local %struct.ntb_child* @device_get_ivars(i32) #1

declare dso_local i64 @NTB_LINK_ENABLED(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
