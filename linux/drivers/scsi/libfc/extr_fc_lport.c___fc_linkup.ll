; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c___fc_linkup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/libfc/extr_fc_lport.c___fc_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32, i64, i32 }

@LPORT_ST_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__fc_linkup(%struct.fc_lport* %0) #0 {
  %2 = alloca %struct.fc_lport*, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %2, align 8
  %3 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %4 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %3, i32 0, i32 2
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %7 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %1
  %11 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %12 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %14 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LPORT_ST_RESET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.fc_lport*, %struct.fc_lport** %2, align 8
  %20 = call i32 @fc_lport_enter_flogi(%struct.fc_lport* %19)
  br label %21

21:                                               ; preds = %18, %10
  br label %22

22:                                               ; preds = %21, %1
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @fc_lport_enter_flogi(%struct.fc_lport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
