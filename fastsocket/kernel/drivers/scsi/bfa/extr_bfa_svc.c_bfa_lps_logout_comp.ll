; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_logout_comp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_logout_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_lps_s = type { i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@bfa_lps_logout_comp_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_lps_s*)* @bfa_lps_logout_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_lps_logout_comp(%struct.bfa_lps_s* %0) #0 {
  %2 = alloca %struct.bfa_lps_s*, align 8
  store %struct.bfa_lps_s* %0, %struct.bfa_lps_s** %2, align 8
  %3 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %1
  %10 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %14 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %13, i32 0, i32 3
  %15 = load i32, i32* @bfa_lps_logout_comp_cb, align 4
  %16 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %17 = call i32 @bfa_cb_queue(%struct.TYPE_2__* %12, i32* %14, i32 %15, %struct.bfa_lps_s* %16)
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %20 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %25 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  %30 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bfa_cb_lps_fdisclogo_comp(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %9, %23, %18
  ret void
}

declare dso_local i32 @bfa_cb_queue(%struct.TYPE_2__*, i32*, i32, %struct.bfa_lps_s*) #1

declare dso_local i32 @bfa_cb_lps_fdisclogo_comp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
