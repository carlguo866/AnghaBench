; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_ini_new_sport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_ini_new_sport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32, i32* }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_scsi_ini_new_sport(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_6__* @FCPORT(i32* %8, i32 0)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %14, %1
  ret i32 0
}

declare dso_local %struct.TYPE_6__* @FCPORT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
