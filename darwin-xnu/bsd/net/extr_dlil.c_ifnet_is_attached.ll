; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_is_attached.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_ifnet_is_attached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_is_attached(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = call i32 @lck_mtx_lock_spin(i32* %7)
  %9 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %10 = call i32 @IF_FULLY_ATTACHED(%struct.ifnet* %9)
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %15, %12
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = call i32 @lck_mtx_unlock(i32* %23)
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @IF_FULLY_ATTACHED(%struct.ifnet*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
