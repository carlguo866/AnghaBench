; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_csi_M.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_csi_M.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @csi_M to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_M(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %10 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %8, %11
  %13 = icmp ugt i32 %5, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %17, %20
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %22
  br label %27

27:                                               ; preds = %26, %14
  %28 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %29 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @scrup(%struct.vc_data* %28, i32 %31, i32 %34, i32 %35)
  %37 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  ret void
}

declare dso_local i32 @scrup(%struct.vc_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
