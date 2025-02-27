; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_disc.c_snic_disc_term.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_disc.c_snic_disc_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { i32, %struct.snic_disc }
%struct.snic_disc = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Terminating Discovery.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snic_disc_term(%struct.snic* %0) #0 {
  %2 = alloca %struct.snic*, align 8
  %3 = alloca %struct.snic_disc*, align 8
  store %struct.snic* %0, %struct.snic** %2, align 8
  %4 = load %struct.snic*, %struct.snic** %2, align 8
  %5 = getelementptr inbounds %struct.snic, %struct.snic* %4, i32 0, i32 1
  store %struct.snic_disc* %5, %struct.snic_disc** %3, align 8
  %6 = load %struct.snic_disc*, %struct.snic_disc** %3, align 8
  %7 = getelementptr inbounds %struct.snic_disc, %struct.snic_disc* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.snic_disc*, %struct.snic_disc** %3, align 8
  %10 = getelementptr inbounds %struct.snic_disc, %struct.snic_disc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.snic_disc*, %struct.snic_disc** %3, align 8
  %15 = getelementptr inbounds %struct.snic_disc, %struct.snic_disc* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.snic*, %struct.snic** %2, align 8
  %17 = getelementptr inbounds %struct.snic, %struct.snic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @SNIC_SCSI_DBG(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.snic_disc*, %struct.snic_disc** %3, align 8
  %22 = getelementptr inbounds %struct.snic_disc, %struct.snic_disc* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @SNIC_SCSI_DBG(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
