; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lookup_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_fcs_lport.c_bfa_fcs_lookup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_lport_s = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bfa_fcs_s = type { i32 }
%struct.bfa_fcs_vport_s = type { %struct.bfa_fcs_lport_s }
%struct.TYPE_6__ = type { %struct.bfa_fcs_lport_s }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(%struct.bfa_fcs_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_fcs_lport_s*, align 8
  %5 = alloca %struct.bfa_fcs_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bfa_fcs_vport_s*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store %struct.bfa_fcs_s* %0, %struct.bfa_fcs_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %11 = icmp eq %struct.bfa_fcs_s* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.TYPE_6__* @bfa_fcs_vf_lookup(%struct.bfa_fcs_s* %14, i32 %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %9, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %18 = icmp eq %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @bfa_trc(%struct.bfa_fcs_s* %20, i32 %21)
  store %struct.bfa_fcs_lport_s* null, %struct.bfa_fcs_lport_s** %4, align 8
  br label %47

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26, %23
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store %struct.bfa_fcs_lport_s* %36, %struct.bfa_fcs_lport_s** %4, align 8
  br label %47

37:                                               ; preds = %26
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.bfa_fcs_vport_s* @bfa_fcs_fabric_vport_lookup(%struct.TYPE_6__* %38, i32 %39)
  store %struct.bfa_fcs_vport_s* %40, %struct.bfa_fcs_vport_s** %8, align 8
  %41 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %8, align 8
  %42 = icmp ne %struct.bfa_fcs_vport_s* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %8, align 8
  %45 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %44, i32 0, i32 0
  store %struct.bfa_fcs_lport_s* %45, %struct.bfa_fcs_lport_s** %4, align 8
  br label %47

46:                                               ; preds = %37
  store %struct.bfa_fcs_lport_s* null, %struct.bfa_fcs_lport_s** %4, align 8
  br label %47

47:                                               ; preds = %46, %43, %34, %19
  %48 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  ret %struct.bfa_fcs_lport_s* %48
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_6__* @bfa_fcs_vf_lookup(%struct.bfa_fcs_s*, i32) #1

declare dso_local i32 @bfa_trc(%struct.bfa_fcs_s*, i32) #1

declare dso_local %struct.bfa_fcs_vport_s* @bfa_fcs_fabric_vport_lookup(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
