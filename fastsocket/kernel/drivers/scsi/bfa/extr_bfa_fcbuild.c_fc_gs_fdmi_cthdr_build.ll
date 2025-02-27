; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_gs_fdmi_cthdr_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcbuild.c_fc_gs_fdmi_cthdr_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_hdr_s = type { i32, i32, i32, i32 }

@CT_GS3_REVISION = common dso_local global i32 0, align 4
@CT_GSTYPE_MGMTSERVICE = common dso_local global i32 0, align 4
@CT_GSSUBTYPE_HBA_MGMTSERVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_hdr_s*, i32, i32)* @fc_gs_fdmi_cthdr_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_gs_fdmi_cthdr_build(%struct.ct_hdr_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ct_hdr_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ct_hdr_s* %0, %struct.ct_hdr_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %4, align 8
  %8 = call i32 @memset(%struct.ct_hdr_s* %7, i32 0, i32 16)
  %9 = load i32, i32* @CT_GS3_REVISION, align 4
  %10 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %4, align 8
  %11 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @CT_GSTYPE_MGMTSERVICE, align 4
  %13 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %4, align 8
  %14 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @CT_GSSUBTYPE_HBA_MGMTSERVER, align 4
  %16 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %4, align 8
  %17 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @cpu_to_be16(i32 %18)
  %20 = load %struct.ct_hdr_s*, %struct.ct_hdr_s** %4, align 8
  %21 = getelementptr inbounds %struct.ct_hdr_s, %struct.ct_hdr_s* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  ret void
}

declare dso_local i32 @memset(%struct.ct_hdr_s*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
