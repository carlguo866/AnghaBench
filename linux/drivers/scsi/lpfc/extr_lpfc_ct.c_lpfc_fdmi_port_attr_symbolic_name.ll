; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_port_attr_symbolic_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_port_attr_symbolic_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32 }
%struct.lpfc_fdmi_attr_def = type { i8*, i8*, i32 }
%struct.lpfc_fdmi_attr_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FOURBYTES = common dso_local global i32 0, align 4
@RPRT_SYM_PORTNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_fdmi_attr_def*)* @lpfc_fdmi_port_attr_symbolic_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_fdmi_port_attr_symbolic_name(%struct.lpfc_vport* %0, %struct.lpfc_fdmi_attr_def* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_fdmi_attr_def*, align 8
  %5 = alloca %struct.lpfc_fdmi_attr_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_fdmi_attr_def* %1, %struct.lpfc_fdmi_attr_def** %4, align 8
  %8 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %8, i32 0, i32 2
  %10 = bitcast i32* %9 to %struct.lpfc_fdmi_attr_entry*
  store %struct.lpfc_fdmi_attr_entry* %10, %struct.lpfc_fdmi_attr_entry** %5, align 8
  %11 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %5, align 8
  %12 = call i32 @memset(%struct.lpfc_fdmi_attr_entry* %11, i32 0, i32 256)
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %14 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %5, align 8
  %15 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @lpfc_vport_symbolic_port_name(%struct.lpfc_vport* %13, i32 %17, i32 256)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 3
  %25 = sub nsw i32 4, %24
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ %25, %22 ], [ 4, %26 ]
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @FOURBYTES, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @cpu_to_be16(i32 %34)
  %36 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %37 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @RPRT_SYM_PORTNAME, align 4
  %39 = call i8* @cpu_to_be16(i32 %38)
  %40 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %41 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.lpfc_fdmi_attr_entry*, i32, i32) #1

declare dso_local i32 @lpfc_vport_symbolic_port_name(%struct.lpfc_vport*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
