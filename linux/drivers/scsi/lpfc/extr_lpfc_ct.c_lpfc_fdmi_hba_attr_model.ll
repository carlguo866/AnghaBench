; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_hba_attr_model.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_fdmi_hba_attr_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32 }
%struct.lpfc_fdmi_attr_def = type { i8*, i8*, i32 }
%struct.lpfc_fdmi_attr_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FOURBYTES = common dso_local global i32 0, align 4
@RHBA_MODEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_fdmi_attr_def*)* @lpfc_fdmi_hba_attr_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_fdmi_hba_attr_model(%struct.lpfc_vport* %0, %struct.lpfc_fdmi_attr_def* %1) #0 {
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_fdmi_attr_def*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_fdmi_attr_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %3, align 8
  store %struct.lpfc_fdmi_attr_def* %1, %struct.lpfc_fdmi_attr_def** %4, align 8
  %9 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %10 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %9, i32 0, i32 0
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %10, align 8
  store %struct.lpfc_hba* %11, %struct.lpfc_hba** %5, align 8
  %12 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %13 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %12, i32 0, i32 2
  %14 = bitcast i32* %13 to %struct.lpfc_fdmi_attr_entry*
  store %struct.lpfc_fdmi_attr_entry* %14, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %15 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %16 = call i32 @memset(%struct.lpfc_fdmi_attr_entry* %15, i32 0, i32 256)
  %17 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %18 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strncpy(i32 %20, i32 %23, i32 4)
  %25 = load %struct.lpfc_fdmi_attr_entry*, %struct.lpfc_fdmi_attr_entry** %6, align 8
  %26 = getelementptr inbounds %struct.lpfc_fdmi_attr_entry, %struct.lpfc_fdmi_attr_entry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strnlen(i32 %28, i32 4)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 3
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 3
  %36 = sub nsw i32 4, %35
  br label %38

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 4, %37 ]
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @FOURBYTES, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i8* @cpu_to_be16(i32 %45)
  %47 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* @RHBA_MODEL, align 4
  %50 = call i8* @cpu_to_be16(i32 %49)
  %51 = load %struct.lpfc_fdmi_attr_def*, %struct.lpfc_fdmi_attr_def** %4, align 8
  %52 = getelementptr inbounds %struct.lpfc_fdmi_attr_def, %struct.lpfc_fdmi_attr_def* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @memset(%struct.lpfc_fdmi_attr_entry*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
