; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_set_rport_loss_tmo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_set_rport_loss_tmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_rport = type { i64, %struct.bfad_itnim_data_s* }
%struct.bfad_itnim_data_s = type { %struct.bfad_itnim_s* }
%struct.bfad_itnim_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.bfad_s* }
%struct.bfad_s = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_rport*, i64)* @bfad_im_set_rport_loss_tmo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfad_im_set_rport_loss_tmo(%struct.fc_rport* %0, i64 %1) #0 {
  %3 = alloca %struct.fc_rport*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bfad_itnim_data_s*, align 8
  %6 = alloca %struct.bfad_itnim_s*, align 8
  %7 = alloca %struct.bfad_s*, align 8
  %8 = alloca i64, align 8
  store %struct.fc_rport* %0, %struct.fc_rport** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %10 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %9, i32 0, i32 1
  %11 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %10, align 8
  store %struct.bfad_itnim_data_s* %11, %struct.bfad_itnim_data_s** %5, align 8
  %12 = load %struct.bfad_itnim_data_s*, %struct.bfad_itnim_data_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfad_itnim_data_s, %struct.bfad_itnim_data_s* %12, i32 0, i32 0
  %14 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %13, align 8
  store %struct.bfad_itnim_s* %14, %struct.bfad_itnim_s** %6, align 8
  %15 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %6, align 8
  %16 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.bfad_s*, %struct.bfad_s** %18, align 8
  store %struct.bfad_s* %19, %struct.bfad_s** %7, align 8
  %20 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %21 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %20, i32 0, i32 0
  %22 = call i64 @bfa_fcpim_path_tov_get(i32* %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %25 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %30, 1
  %32 = load %struct.fc_rport*, %struct.fc_rport** %3, align 8
  %33 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %2
  ret void
}

declare dso_local i64 @bfa_fcpim_path_tov_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
