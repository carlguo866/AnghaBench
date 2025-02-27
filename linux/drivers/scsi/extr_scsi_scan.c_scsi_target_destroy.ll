; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_target_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_scan.c_scsi_target_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_target = type { i64, i32, %struct.device }
%struct.device = type { i32 }
%struct.Scsi_Host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.scsi_target*)* }

@STARGET_DEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_target*)* @scsi_target_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_target_destroy(%struct.scsi_target* %0) #0 {
  %2 = alloca %struct.scsi_target*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i64, align 8
  store %struct.scsi_target* %0, %struct.scsi_target** %2, align 8
  %6 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %6, i32 0, i32 2
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.Scsi_Host* @dev_to_shost(i32 %10)
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %4, align 8
  %12 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @STARGET_DEL, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* @STARGET_DEL, align 8
  %20 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %21 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call i32 @transport_destroy_device(%struct.device* %22)
  %24 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %25 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32 %26, i64 %27)
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.scsi_target*)*, i32 (%struct.scsi_target*)** %32, align 8
  %34 = icmp ne i32 (%struct.scsi_target*)* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.scsi_target*)*, i32 (%struct.scsi_target*)** %39, align 8
  %41 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %42 = call i32 %40(%struct.scsi_target* %41)
  br label %43

43:                                               ; preds = %35, %1
  %44 = load %struct.scsi_target*, %struct.scsi_target** %2, align 8
  %45 = getelementptr inbounds %struct.scsi_target, %struct.scsi_target* %44, i32 0, i32 1
  %46 = call i32 @list_del_init(i32* %45)
  %47 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %48 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32 %49, i64 %50)
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = call i32 @put_device(%struct.device* %52)
  ret void
}

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @transport_destroy_device(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
