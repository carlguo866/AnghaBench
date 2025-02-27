; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_scsi_tape_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_st.c_scsi_tape_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_tape = type { i32, %struct.scsi_device* }
%struct.scsi_device = type { i32 }

@st_ref_mutex = common dso_local global i32 0, align 4
@scsi_tape_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_tape*)* @scsi_tape_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_tape_put(%struct.scsi_tape* %0) #0 {
  %2 = alloca %struct.scsi_tape*, align 8
  %3 = alloca %struct.scsi_device*, align 8
  store %struct.scsi_tape* %0, %struct.scsi_tape** %2, align 8
  %4 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %5 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %4, i32 0, i32 1
  %6 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  store %struct.scsi_device* %6, %struct.scsi_device** %3, align 8
  %7 = call i32 @mutex_lock(i32* @st_ref_mutex)
  %8 = load %struct.scsi_tape*, %struct.scsi_tape** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %8, i32 0, i32 0
  %10 = load i32, i32* @scsi_tape_release, align 4
  %11 = call i32 @kref_put(i32* %9, i32 %10)
  %12 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %13 = call i32 @scsi_device_put(%struct.scsi_device* %12)
  %14 = call i32 @mutex_unlock(i32* @st_ref_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
